# cowlamp

<table>
<tr>
<td>Description</td>
<td>Send/receive fake CalAmp messages.</td>
</tr>
<tr>
<td>Node Version</td>
<td>>= 0.8.9</td>
</tr>
</table>

Installation
------------

Install [NodeJS](http://nodejs.org) in your preferred manner, then:

    npm install cowlamp

Usage
-----

Specify message type:

    send --message_type=10

Specify destination IP / port:

    send --ip=127.5.56.1 --port=2013

Todo
----

 * Handle ack