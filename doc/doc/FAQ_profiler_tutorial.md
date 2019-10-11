

<img src="img/logo.png" align="middle"></img>

<h1 align="center"><strong>FAQ->实施</strong></h1>


![](https://img.shields.io/badge/Windows_10-17763.615-blueviolet.svg)
![](https://img.shields.io/badge/SQLServer-2012-orange.svg)
![](https://img.shields.io/badge/FAQ-No.001-brightgreen.svg)


# 使用<strong>SQLServer Profiler</strong>跟踪问题

## 打开`SQLServer Profiler`

- 在`Microsoft SQL Server Management Studio`工具栏可直接打开
- 或自行在任务栏的`Cortana`中搜索

![](img/19_08_15/QQ图片20190815103627.png)

## 新建跟踪

- 点击<kbd>文件</kbd>--><kbd>新建跟踪</kbd>

![](img/19_08_15/QQ图片20190815104201.png)

- 输入需要跟踪的数据库服务器地址及账号密码等信息

![](img/19_08_15/QQ图片20190815104341.png)

>     如果有许多跟踪，可以提供一个跟踪名称来帮助在以后进行分类。不同的跟踪模板可帮助建立用于不同目的的跟踪。


![](img/19_08_15/QQ图片20190815104407.png)

- 单击`事件选择`选项卡，取消勾选`Security Audit`和`Sessions`,勾选下方`显示所有列`,

| 事件类            | 事件               | 说明                            |
| ----------------- | ------------------ | ------------------------------- |
| Stored Procedures | RPC:Completed      | RPC完成事件                     |
|                   | SP:Completed       | 存储过程完成事件                |
|                   | SP:StmtCompleted   | 在存储过程中一条SQL语句完成事件 |
| T-SQL             | SQL:BatchCompleted | T-SQL批完成事件                 |
|                   | SQL:StmtCompleted  | 一条T-SQL语句完成事件           |



| 事件类                                      | 事件                                                         | 说明                                                         |
| ------------------------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Security Audit(安全审计)                    | Audit Login(登录审计)                                        | 记录用户连接到SQL Server或断开连接时数据库的连接             |
| Audit Logout(注销审计)                      |                                                              |                                                              |
| Sessions(会话)                              | ExistingConnection(现有连接)                                 | 表示所有在跟踪开始之间连接到SQL Server的用户                 |
| Cursors(游标)                               | CursorImplicitConversion(游标隐含转换)                       | 表明创建的游标类型与所请求的类型个不同                       |
| Errors and Warnings(错误和警告)             | Attention(注意)                                              | 表示由于客户端撤销查询或者数据库连接破坏引起请求中断         |
| Exception(异常)                             | 表明SQL Server发生了异常                                     |                                                              |
| Execution Warning(执行警告)                 | 表明在查询或存储过程执行期间出现了警告                       |                                                              |
| Hash Warning(哈希警告)                      | 表明hash操作发生了错误                                       |                                                              |
| Missing Column Statistics(列统计丢失)       | 表明优化器要求的确定处理策略用的类统计丢失                   |                                                              |
| Missing Join Predicate(连接断言丢失)        | 表明查询在两个表没有连接断言情况下执行                       |                                                              |
| Sort Warning(排序警告)                      | 表明像SELECT这样的查询中执行排序操作没有合适的内存           |                                                              |
| Locks(锁)                                   | Lock:Deadlock(死锁)                                          | 标志着死锁的出现                                             |
| Lock:Deadlock Chain(死锁链)                 | 显示产生死锁的查询链条                                       |                                                              |
| lock:Timeout(锁超时)                        | 表示锁已经超过其超时参数，该参数由SETLOCK_TIMEOUT timeout_perious(ms)命令设置 |                                                              |
| Stored Procedures(存储过程)                 | SP:Recompile(重编译)                                         | 表明用于一个存储过程的执行计划必须重编译，原因是执行计划不存在，强制的重编译，或者现有的执行计划不能重用 |
| SP:Starting(开始) SP:StmtStarting(语句开始) | 分别表示一个SP:StmtStarting存储过程和存储过程中的一条SQL语句的开始。他们对于识别开始单因为一个操作导致Attention事件未能结束的查询很有用 |                                                              |
| Transactions(事物)                          | SQLTransaction(SQL事务)                                      | 提供数据库事务的信息，包括事务开始/结束的时间、事务持续事件等信息 |

**3、事件列**

 　　事件以不同的特性(被称为数据列)来表现。数据列表现一个事件的不通特性，如事件的类、用于该事件的SQL语句、事件的资源开销以及事件来源。

| 数据列             | 说明                                                         |
| ------------------ | ------------------------------------------------------------ |
| EventClass(事件类) | 事件类型，如SQL:StatementCompleted                           |
| TextData           | 事件所用的SQL语句，如SELECT * FROM Person                    |
| CPU                | 事件的CPU开销（以ms表示），如对一个SELECT语句，CPU=100表示该语句执行100ms |
| Reads              | 为一个事件所执行的逻辑读操作数量。例如对一个SELECT语句，Reads=800表示该语句需要800次逻辑读操作 |
| Writes             | 为一个事件所执行的逻辑写操作数量                             |
| Duration           | 事件的执行时间(ms)                                           |
| SPID               | 用于该事件的SQL Server进程标识符                             |
| StartTime          | 事件开始的时间                                               |

 　　以上是常用的数据列，另外还有一些不太常用的数据列：

- 　　BinaryData(二进制数据)
- 　　IntegerData(整数数据)
- 　　EventSubClass(事件子类)
- 　　DatabaseID(数据库标识符)
- 　　ObjectID(对象标识符)
- 　　IndexID(索引标识符)
- 　　TransactionID(事务标识符)
- 　　Error(错误)
- 　　EndTime(结束时间)

　　列数据可以重新安排以符合你自己所喜欢的风格，要控制列数据的安放，单击组织列按钮，将打开如下对话框。可以单击Up和Down按钮修改列的位置，将列移入Groups意味着它将成为一个合计列。



**4、列筛选器**

　　除了为一个Profiler跟踪定义事件和数据列之外，还可以定义各种过滤条件。这些条件帮助缩小跟踪的输出，这往往是一个好主意。下面给出常用过滤条件列表。

| 事件                          | 过滤条件实例                           | 用处                                                         |
| ----------------------------- | -------------------------------------- | ------------------------------------------------------------ |
| ApplicationName(应用程序名称) | Not like:SQL Profiler                  | 过滤Profiler生成的事件。这是默认的行为                       |
| DatabaseID(数据库标识符)      | Equals:<ID of the database to monitor> | 过滤特定数据库生成的事件。数据库ID:SELECT DB_IC('Northwind') |
| Duration(持续时间)            | Greater than or equal:2                | 对于性能分析，经常会为一个大的工作负载捕捉跟踪，在大的跟踪中，许多事件日志具有比所感兴趣更小的持续周期(Duration)。过滤这个事件日志，因为几乎没有可用于优化这些SQL活动的余地 |
| Reads(读操作数)               | Greater than or equal"2                | 过滤读操作较小的事件                                         |
| SPID                          | Equals:<Database users to monitor>     | 定位由特定的数据库用户发送的查询                             |

**5、跟踪模板**

　　SQL Server Profiler可以用自定义事件、数据列和过滤器创建一个跟踪模板，然后定义一个新的跟踪，然后重用跟踪个模板来捕捉一个跟踪。定义新跟踪模板的过程类似于定义新跟踪，步骤如下：

1. 创建一个新的跟踪。
2. 和前面一样定义事件，数据列和过滤器。
3. 从文件=》另存为菜单将跟踪定义保存为跟踪模板。

　　SQL Server Profiler将自动将新的模板加入到其模板列表中。



![](img/19_08_15/QQ图片20190815105114.png)

![](img/19_08_15/QQ图片20190815105209.png)

![](img/19_08_15/QQ图片20190815110443.png)

![](img/19_08_15/QQ图片20190815110003.png)

![](img/19_08_15/QQ图片20190815110144.png)



---

## 如有疑惑，自行百度，不行google，着实🈚力，联系开发🖕