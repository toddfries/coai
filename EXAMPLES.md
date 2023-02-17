# EXAMPLES

To avoid cluttering [README.md](https://github.com/toddfries/coai/blob/master/README.md) with pages of examples below are a few to get you started.

Also, be sure to check out the sample queries in [coai/regress](https://github.com/toddfries/coai/tree/master/regress) that I'm randomly tracking amusingly fluctuating responses for.

```
Query? (type 'done.' to end)
Assume we are going to terraform Mars.  What would be major milestones and timeframes in several alternate techniques to do so?  Best guess here, I know this is not a precisely or scientifically accurate answer.
done.
Requesting... model/temp = text-davinci-003/0.5 .. real 11.14246100s
Response(s):
Choice# 0:

 1. Establishing a Human Presence on Mars (Timeframe:
 2030-2040)
- Sending the first manned mission to Mars
 - Setting up the necessary infrastructure for a human
 presence on Mars

 2. Creating a Robotic Terraforming Process (Timeframe:
 2040-2050)
 - Developing and deploying robots to begin the terraforming
 process
 - Establishing a network of robots to automate and manage the
 process

3. Introducing Earth-Like Conditions (Timeframe: 2050-2060)
- Introducing Earth-like atmospheric conditions to the planet
- Introducing Earth-like temperatures to the planet
- Introducing Earth-like plant life to the planet

 4. Establishing a Self-Sustaining Human Presence (Timeframe:
 2060-2070)
- Establishing a self-sustaining human presence on the planet
 - Developing the necessary infrastructure and resources to
 support a human presence on the planet
 - Developing a system of government and laws to govern the
 human presence on the planet


     finish = stop
Stats: 1676650160 tot/prompt/compl tokens = 268/46/222
```

```
Query? (type 'done.' to end)
Please write a poem about the founder of bitcoin.  Make it funny, but fact filled.
done.
Requesting... model/temp = text-davinci-003/0.5 .. real 10.79967900s
Response(s):
Choice# 0:

There once was a man named Satoshi,
Who wanted to change the world's fate-oh.
He created Bitcoin, a digital currency,
To make a financial system that was secure.

He wanted to give the world a new way,
To transfer money without delay.
No more banks or brokers,
Just a system that's open to all.

He made a decentralized network,
Where transactions were anonymous yet.
No one could take away your funds,
And it was all done with no one's guns.

Satoshi's idea was revolutionary,
And it's changed the way we think about money.
So if you're ever in need of some cash,
Just remember the founder of Bitcoin, Satoshi Nakamoto.


     finish = stop
Stats: 1676650436 tot/prompt/compl tokens = 189/20/169
```

```
Write a perl program to query OpenAI::API     
done.
Requesting... model/temp = text-davinci-003/0.5 .. real 9.31728500s
Response(s):
Choice# 0:

#!/usr/bin/perl

use strict;
use warnings;

use OpenAI::API;

# Create an instance of the OpenAI::API object
my $api = OpenAI::API->new();

# Set the API key
$api->set_api_key('your-api-key-here');

# Make a request to the OpenAI API
my $response = $api->query('your-query-here');

# Check for a successful response
if ($response->{'status'} eq 'success') {
    # Do something with the response
    print $response->{'data'};
} else {
    # Handle the error
    print "Error: " . $response->{'message'};
}


     finish = stop
Stats: 1676650501 tot/prompt/compl tokens = 184/11/173
```

... and yes, the origin of this program started with a response similar to the above!
