(** Creates an Application User Schema property.
This resource allows you to create and configure a custom user schema property and associate it with an application.
Make sure that the app instance is 'active' before creating the schema property, because in some cases API might return '404' error.
**IMPORTANT:** With 'enum', list its values as strings even though the 'type'
may be something other than string. This is a limitation of the schema defintion
in the Terraform Plugin SDK runtime and we juggle the type correctly when making
Okta API calls. Same holds for the 'const' value of 'one_of' as well as the
'array_*' variation of 'enum' and 'one_of' *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type array_one_of

val array_one_of :
  const:string prop -> title:string prop -> unit -> array_one_of

type one_of

val one_of : const:string prop -> title:string prop -> unit -> one_of

type okta_app_user_schema_property

val okta_app_user_schema_property :
  ?array_enum:string prop list ->
  ?array_type:string prop ->
  ?description:string prop ->
  ?enum:string prop list ->
  ?external_name:string prop ->
  ?external_namespace:string prop ->
  ?id:string prop ->
  ?master:string prop ->
  ?max_length:float prop ->
  ?min_length:float prop ->
  ?permissions:string prop ->
  ?required:bool prop ->
  ?scope:string prop ->
  ?union:bool prop ->
  ?unique:string prop ->
  ?user_type:string prop ->
  ?array_one_of:array_one_of list ->
  ?one_of:one_of list ->
  app_id:string prop ->
  index:string prop ->
  title:string prop ->
  type_:string prop ->
  unit ->
  okta_app_user_schema_property

val yojson_of_okta_app_user_schema_property :
  okta_app_user_schema_property -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  app_id : string prop;
  array_enum : string list prop;
  array_type : string prop;
  description : string prop;
  enum : string list prop;
  external_name : string prop;
  external_namespace : string prop;
  id : string prop;
  index : string prop;
  master : string prop;
  max_length : float prop;
  min_length : float prop;
  permissions : string prop;
  required : bool prop;
  scope : string prop;
  title : string prop;
  type_ : string prop;
  union : bool prop;
  unique : string prop;
  user_type : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?array_enum:string prop list ->
  ?array_type:string prop ->
  ?description:string prop ->
  ?enum:string prop list ->
  ?external_name:string prop ->
  ?external_namespace:string prop ->
  ?id:string prop ->
  ?master:string prop ->
  ?max_length:float prop ->
  ?min_length:float prop ->
  ?permissions:string prop ->
  ?required:bool prop ->
  ?scope:string prop ->
  ?union:bool prop ->
  ?unique:string prop ->
  ?user_type:string prop ->
  ?array_one_of:array_one_of list ->
  ?one_of:one_of list ->
  app_id:string prop ->
  index:string prop ->
  title:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?array_enum:string prop list ->
  ?array_type:string prop ->
  ?description:string prop ->
  ?enum:string prop list ->
  ?external_name:string prop ->
  ?external_namespace:string prop ->
  ?id:string prop ->
  ?master:string prop ->
  ?max_length:float prop ->
  ?min_length:float prop ->
  ?permissions:string prop ->
  ?required:bool prop ->
  ?scope:string prop ->
  ?union:bool prop ->
  ?unique:string prop ->
  ?user_type:string prop ->
  ?array_one_of:array_one_of list ->
  ?one_of:one_of list ->
  app_id:string prop ->
  index:string prop ->
  title:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
