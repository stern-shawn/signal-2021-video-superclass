#!/usr/bin/env zx

import { $, question } from 'zx';

$.verbose = false;

const accountSid = await question('What is your Twilio Account SID?: ');
const apiKey = await question('What is your API Key SID?: ');
const apiSecret = await question('What is your API Key Secret?: ');

await $`printf "TWILIO_ACCOUNT_SID=${accountSid}\nTWILIO_API_KEY=${apiKey}\nTWILIO_API_SECRET=${apiSecret}" >> .env`;
