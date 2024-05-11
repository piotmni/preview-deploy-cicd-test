import * as core from '@actions/core';
import * as fs from 'fs';
import { context } from '@actions/github';

const appDefPath = core.getInput('app-definition-path');
core.info(`Path to app def, ${appDefPath}`);


if (context.eventName === 'pull_request' && context.payload.action === 'opened') {
    core.info('PR opened');
    const fileContent = fs.readFileSync(appDefPath, 'utf8');
    core.info(`Content of file at path ${appDefPath}: ${fileContent}`);
}