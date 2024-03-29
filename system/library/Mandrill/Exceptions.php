<?php

class Mandrill_Error extends Exception {}
class Mandrill_HttpError extends Mandrill_Error {}

/**
 * The parameters passed to the API call are invalid or not provided when required
 */
class Mandrill_ValidationError extends Mandrill_Error {}

/**
 * The provided API key is not a valid Mandrill API key
 */
class Mandrill_Invalid_Key extends Mandrill_Error {}

/**
 * The requested template does not exist
 */
class Mandrill_Unknown_Template extends Mandrill_Error {}

/**
 * The requested tag does not exist or contains invalid characters
 */
class Mandrill_Invalid_Tag_Name extends Mandrill_Error {}

/**
 * The requested email is not in the rejection list
 */
class Mandrill_Invalid_Reject extends Mandrill_Error {}

/**
 * The requested sender does not exist
 */
class Mandrill_Unknown_Sender extends Mandrill_Error {}

/**
 * The requested URL has not been seen in a tracked link
 */
class Mandrill_Unknown_Url extends Mandrill_Error {}

/**
 * The given template name already exists or contains invalid characters
 */
class Mandrill_Invalid_Template extends Mandrill_Error {}

/**
 * The requested webhook does not exist
 */
class Mandrill_Unknown_Webhook extends Mandrill_Error {}

/**
 * The requested inbound domain does not exist
 */
class Mandrill_Unknown_InboundDomain extends Mandrill_Error {}


