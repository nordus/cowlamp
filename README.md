# cowlamp

<table>
<td>Description</td>
<td>Send/receive fake CalAmp messages.</td>
</tr>
<tr>
<td>Node Version</td>
<td>>= 0.8.9</td>
</tr>
<tr>
<td>Build Status</td>
<td>
<a href='https://travis-ci.org/nordus/cowlamp'>
<img src='https://secure.travis-ci.org/nordus/cowlamp.png?branch=master' />
</a>
</td>
</tr>
<tr>
</table>

Installation
------------

Install [NodeJS](http://nodejs.org) in your preferred manner, then:

    npm install cowlamp -g

Usage
-----

Specify message type:

    cowlamp --message_type=10

Specify destination IP / port:

    cowlamp --ip=127.5.56.1 --port=2013

Todo
----

 * Handle ack