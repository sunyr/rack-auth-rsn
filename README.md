% ---
title: RSN (research and study note) for Rack Authentication
author: Huang Wei
id: rsn.rack_auth
% ---

基础知识
=============

实践使用cucumber测试调研和验证某项技术的方法。

1. 理解Web Server, 了解一些CGI，Web Framework的基础知识
2. [Introducing Rack](http://chneukirchen.org/blog/archive/2007/02/introducing-rack.html)
3. 理解Authentication和Authorization
4. Cucumber和rack test，参考一下本项目里如何用`eval`的方式测试多个rackup（`*.ru`文件）。

Rack基础
=============

作为Web服务器和Web Framework之间的共通interface，Rack定义一个函数`call`，
接受一个Hash参数（包含env定义），并返回三个值组成的数组：

    数字（status code）, Hash（header），Array（body parts）。

如：

    class HelloWorld
      def call(env)
        [200, {"Content-Type" => "text/plain"}, ["Hello world!"]]
      end
    end

参照`hello_world.feature`。

或更简单的只要一行：

    run lambda {|env| [200, {}, ["Hello world!"]] }

参照`oneline.feature`。

Rack Middleware
================

所谓rack middleware依然是一个普通的rack app，只需要在construct函数里接收另一个app即可:



use和调用的顺序。

Rack::Warden和测试
========================

Rack::Warden和Cookie
======================

