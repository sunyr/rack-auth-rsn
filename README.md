% ---
title: RSN (research and study note) for Rack Authentication
author: Huang Wei
id: rsn.rack_auth
% ---

Introduction
=============

实践使用cucumber测试调研和验证某项技术的方法。

基础知识

1. Web Server, CGI
2. [Introducing Rack](http://chneukirchen.org/blog/archive/2007/02/introducing-rack.html)

作为Web服务器和Web Framework之间的共通interface，Rack定义一个函数`call`，
接受一个Hash参数（包含env定义），并返回三个值组成的数组：

    数字（status code）, Hash（header），Array（body parts）。

如：

    class HelloWorld
      def call(env)
        [200, {"Content-Type" => "text/plain"}, ["Hello world!"]]
      end
    end

参照`Test1`。


RACK Test
=============


Rack Middleware
================
