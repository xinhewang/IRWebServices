import logging
import tornado.escape
import tonado.ioloop
import tornado.web
import os.path
import uuid

from tornado.concurrent import Future
from tornado import gen
from tornado.options import define, options, parse_command_line

define("port", default=8888, help = "run on the given port", type = int)
define("debug", default=False, help = "run in debug mode")