(** Create an email customization of an email template belonging to a brand in an Okta organization.
		Use this resource to create an [email
		customization](https://developer.okta.com/docs/reference/api/brands/#create-email-customization)
		of an email template belonging to a brand in an Okta organization.
		~> Okta's public API is strict regarding the behavior of the 'is_default'
		property in [an email
		customization](https://developer.okta.com/docs/reference/api/brands/#email-customization).
		Make use of 'depends_on' meta argument to ensure the provider navigates email customization
		language versions seamlessly. Have all secondary customizations depend on the primary
		customization that is marked default. See [Example Usage](#example-usage).
		~> Caveats for [creating an email
		customization](https://developer.okta.com/docs/reference/api/brands/#response-body-19).
		If this is the first customization being created for the email template, and
		'is_default' is not set for the customization in its resource configuration, the
		API will respond with the created customization marked as default. The API will
		400 if the language parameter is not one of the supported languages or the body
		parameter does not contain a required variable reference. The API will error 409
		if 'is_default' is true and a default customization exists. The API will 404 for
		an invalid 'brand_id' or 'template_name'.
		~> Caveats for [updating an email
		customization](https://developer.okta.com/docs/reference/api/brands/#response-body-22).
		If the 'is_default' parameter is true, the previous default email customization
		has its 'is_default' set to false (see previous note about mitigating this with
		'depends_on' meta argument). The API will 409 if there’s already another email
		customization for the specified language or the 'is_default' parameter is false
		and the email customization being updated is the default. The API will 400 if
		the language parameter is not one of the supported locales or the body parameter
		does not contain a required variable reference.  The API will 404 for an invalid
		'brand_id' or 'template_name'. *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type okta_email_customization

val okta_email_customization :
  ?body:string prop ->
  ?force_is_default:string prop ->
  ?is_default:bool prop ->
  ?language:string prop ->
  ?subject:string prop ->
  brand_id:string prop ->
  template_name:string prop ->
  unit ->
  okta_email_customization

val yojson_of_okta_email_customization :
  okta_email_customization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  body : string prop;
  brand_id : string prop;
  force_is_default : string prop;
  id : string prop;
  is_default : bool prop;
  language : string prop;
  links : string prop;
  subject : string prop;
  template_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?body:string prop ->
  ?force_is_default:string prop ->
  ?is_default:bool prop ->
  ?language:string prop ->
  ?subject:string prop ->
  brand_id:string prop ->
  template_name:string prop ->
  string ->
  t

val make :
  ?body:string prop ->
  ?force_is_default:string prop ->
  ?is_default:bool prop ->
  ?language:string prop ->
  ?subject:string prop ->
  brand_id:string prop ->
  template_name:string prop ->
  string ->
  t Tf_core.resource
