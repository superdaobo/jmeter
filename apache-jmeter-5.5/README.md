<h1 align="center"><img src="https://jmeter.apache.org/images/logo.svg" alt="Apache JMeter logo" /></h1>

一个开源的Java应用程序，旨在测量性能和负载测试应用程序。

由Apache软件基金会提供支持

[![Build Status](https://api.travis-ci.com/apache/jmeter.svg?branch=master)](https://travis-ci.com/apache/jmeter/)
[![codecov](https://codecov.io/gh/apache/jmeter/branch/master/graph/badge.svg)](https://codecov.io/gh/apache/jmeter)
[![License](https://img.shields.io/:license-apache-brightgreen.svg)](https://www.apache.org/licenses/LICENSE-2.0.html)
[![Stack Overflow](https://img.shields.io/:stack%20overflow-jmeter-brightgreen.svg)](https://stackoverflow.com/questions/tagged/jmeter)
[![Maven Central](https://maven-badges.herokuapp.com/maven-central/org.apache.jmeter/ApacheJMeter/badge.svg)](https://maven-badges.herokuapp.com/maven-central/org.apache.jmeter/ApacheJMeter)
[![Javadocs](https://www.javadoc.io/badge/org.apache.jmeter/ApacheJMeter_core.svg)](https://www.javadoc.io/doc/org.apache.jmeter/ApacheJMeter_core)
[![Twitter](https://img.shields.io/twitter/url/https/github.com/apache/jmeter.svg?style=social)](https://twitter.com/intent/tweet?text=Powerful%20load%20testing%20with%20Apache%20JMeter:&url=https://jmeter.apache.org)

## 是什么？

Apache JMeter可以测量性能和负载测试静态和动态Web应用程序。

它可以用于模拟对服务器、服务器组、网络或对象的大负载，以测试其强度或分析不同负载类型下的整体性能。

![JMeter screen](https://raw.githubusercontent.com/apache/jmeter/master/xdocs/images/screenshots/jmeter_screen.png)

## 特点

完全可移植和100% Java。

多线程允许多个线程并发采样，同时由单独的线程组并发采样不同的功能。

### 协议

能够加载和性能测试许多应用程序/服务器/协议类型：

- Web - HTTP，HTTPS（Java，NodeJS，PHP，ASP.NET等）
- SOAP / REST Web服务
- FTP
- 通过JDBC的数据库
- LDAP
- 通过JMS的消息导向中间件（MOM）
- 邮件 - SMTP（S），POP3（S）和IMAP（S）
- 本机命令或shell脚本
- TCP
- Java对象

### IDE

完全功能的测试IDE，可以快速记录测试计划（从浏览器或本地应用程序），构建和调试。

### 命令行

[命令行模式（非GUI / 无头模式）](https://jmeter.apache.org/usermanual/get-started.html#non_gui)
可在任何支持Java的操作系统（Linux，Windows，Mac OSX等）上进行负载测试。

### 报告

完整且准备好呈现的[动态HTML报告](https://jmeter.apache.org/usermanual/generating-dashboard.html)

![Dashboard screenshot](https://raw.githubusercontent.com/apache/jmeter/master/xdocs/images/screenshots/dashboard/response_time_percentiles_over_time.png)

[实时报告](https://jmeter.apache.org/usermanual/realtime-results.html)
到第三方数据库，如InfluxDB或Graphite

![Live report](https://raw.githubusercontent.com/apache/jmeter/master/xdocs/images/screenshots/grafana_dashboard.png)

### 关联

通过从最流行的响应格式（HTML，JSON，XML或任何文本格式）中提取数据的能力，轻松进行关联。

### 高度可扩展的核心

- 可插入的采样器允许无限的测试能力。
- **可脚本化的采样器**（支持JSR223兼容语言，如Groovy）。
- 可以选择多种负载统计数据与**可插入的层**。
- 数据分析和**可视化插件**允许极大的可扩展性和个性化。
- 函数可用于为测试提供动态输入或提供数据操作。
- 通过第三方开源库（如Maven，Gradle和Jenkins）轻松进行持续集成。

## 最新版本

有关最新版本的详细信息，请访问
[JMeter Apache项目网站](https://jmeter.apache.org/)

## 要求

运行Apache JMeter需要满足以下要求：

- Java解释器：

  需要完全兼容的Java 8运行时环境来执行Apache JMeter。使用带有`keytool`实用程序的JDK更适合用于记录HTTPS网站。

- 可选的JAR文件：

  JMeter不包含某些JAR文件。如果需要，这些文件应下载并放置在lib目录中。
  - JDBC - 可从数据库供应商获取
  - JMS - 可从JMS提供商获取
  - [Bouncy Castle](https://www.bouncycastle.org/) - 仅在需要SMIME断言时才需要

- Java编译器（*可选*）：

  不需要Java编译器，因为发行版包含预编译的Java二进制存档。
  > **注意**：构建Apache JMeter插件需要编译器。

## 安装说明

> **注意**：目录名称中的空格可能会导致问题。

- 发行版本

  将二进制存档解压缩到适当的目录结构中。

## 运行JMeter

1. 切换到`bin`目录
2. 运行`jmeter`（Un\*x）或`jmeter.bat`（Windows）文件。

### Windows

对于Windows，还有一些其他脚本，您可以将JMX文件拖放到这些脚本上：

- `jmeter-n.cmd` - 以非GUI测试方式运行文件
- `jmeter-n-r.cmd` - 以非GUI远程（客户端-服务器）测试方式运行文件
- `jmeter-t.cmd` - 加载文件以准备运行GUI测试

## 文档

可用的文档包含在此版本发布日期的HTML格式中，位于[printable_docs](printable_docs)目录中，可以从名为[index.html](printable_docs/index.html)的文件开始浏览。

## 报告错误/增强功能

请参阅[问题跟踪](https://jmeter.apache.org/issues.html)。

## 构建说明

### 发行版本

将源代码存档解压缩到适当的目录结构中。大多数第三方库文件可以通过将其解压缩到相同的目录结构中来从二进制存档中提取。

任何可选的JAR文件（参见上文）应放置在`lib/opt`和/或`lib`中。

`lib/opt`中的JAR文件将用于构建JMeter和运行单元测试，但不会在运行时使用。

_这对于测试其他JMeter用户是否下载了可选的JAR文件很有用。_

如果您在代理后面，可以在`~/.gradle/gradle.properties`中设置一些构建属性，以便Gradle使用代理：

```properties
systemProp.http.proxyHost=proxy.example.invalid
systemProp.http.proxyPort=8080
systemProp.http.proxyUser=your_user_name
systemProp.http.proxyPassword=your_password
systemProp.https.proxyHost=proxy.example.invalid
systemProp.https.proxyPort=8080
systemProp.https.proxyUser=your_user_name
systemProp.https.proxyPassword=your_password
```

### 测试版本

JMeter使用Gradle构建。

以下命令构建和测试JMeter：

```sh
./gradlew build
```

如果系统没有GUI显示，则：

```sh
./gradlew build -Djava.awt.headless=true
```

输出的构建产物（JAR文件、报告）将放置在`build`文件夹中。例如，二进制产物可以在`src/dist/build/distributions`下找到。

以下命令将编译应用程序并使您能够从`bin`目录运行`jmeter`。

> **注意**：它会完全刷新`lib/`内容，因此如果您已安装自定义插件，则会删除它们。

```sh
./gradlew createDist
```

或者，您可以让Gradle启动GUI：

```sh
./gradlew runGui
```

## 开发者信息

有关构建和贡献的详细信息，请参阅
[构建JMeter](https://jmeter.apache.org/building.html)
和[CONTRIBUTING.md](CONTRIBUTING.md)。有关使用Gradle构建JMeter的可用任务的更多信息，请参阅[gradle.md](gradle.md)。

代码可以从以下位置获取：

- https://github.com/apache/jmeter
- https://gitbox.apache.org/repos/asf/jmeter.git

## 许可和法律信息

有关法律和许可信息，请参阅以下文件：

- [LICENSE](LICENSE)
- [NOTICE](NOTICE)

## 加密软件通知

此发行版可能包含为使用加密软件而设计的软件。您目前所在的国家/地区可能对导入、拥有、使用和/或重新导出加密软件有限制。在使用任何加密软件之前，请检查您所在国家/地区的法律、法规和政策，以了解是否允许此操作。有关更多信息，请访问<https://www.wassenaar.org/>。

美国商务部工业和安全局（BIS）将此软件分类为出口商品控制编号（ECCN）5D002.C.1，其中包括使用或执行具有非对称算法的信息安全软件。Apache Software Foundation的发行形式和方式使其符合许可例外ENC Technology Software Unrestricted（TSU）例外（请参阅BIS出口管理条例第740.13节），适用于目标代码和源代码。

以下提供了有关可能受到加密软件出口控制的软件的更多详细信息：

Apache JMeter通过Java Secure Socket Extension（JSSE）API与以下接口：

- HTTPS支持

Apache JMeter通过Apache HttpClient4与以下接口（通过Java Cryptography Extension（JCE）API）：

- NTLM身份验证

Apache JMeter不包含JSSE或JCE的任何实现。

## 感谢

**感谢您使用Apache JMeter。**

### 第三方通知

* mxparser的通知：

  > 本产品包括由印第安纳大学Extreme！实验室开发的软件。有关更多信息，请访问
  > http://www.extreme.indiana.edu/
