(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_event_connection__auth_parameters__api_key = {
  key : string prop;  (** key *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__api_key *)

type aws_cloudwatch_event_connection__auth_parameters__basic = {
  password : string prop;  (** password *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__basic *)

type aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters__body = {
  is_value_secret : bool prop option; [@option]
      (** is_value_secret *)
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters__body *)

type aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters__header = {
  is_value_secret : bool prop option; [@option]
      (** is_value_secret *)
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters__header *)

type aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters__query_string = {
  is_value_secret : bool prop option; [@option]
      (** is_value_secret *)
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters__query_string *)

type aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters = {
  body :
    aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters__body
    list;
  header :
    aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters__header
    list;
  query_string :
    aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters__query_string
    list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters *)

type aws_cloudwatch_event_connection__auth_parameters__oauth__client_parameters = {
  client_id : string prop;  (** client_id *)
  client_secret : string prop;  (** client_secret *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__oauth__client_parameters *)

type aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters__body = {
  is_value_secret : bool prop option; [@option]
      (** is_value_secret *)
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters__body *)

type aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters__header = {
  is_value_secret : bool prop option; [@option]
      (** is_value_secret *)
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters__header *)

type aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters__query_string = {
  is_value_secret : bool prop option; [@option]
      (** is_value_secret *)
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters__query_string *)

type aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters = {
  body :
    aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters__body
    list;
  header :
    aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters__header
    list;
  query_string :
    aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters__query_string
    list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters *)

type aws_cloudwatch_event_connection__auth_parameters__oauth = {
  authorization_endpoint : string prop;
      (** authorization_endpoint *)
  http_method : string prop;  (** http_method *)
  client_parameters :
    aws_cloudwatch_event_connection__auth_parameters__oauth__client_parameters
    list;
  oauth_http_parameters :
    aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters
    list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__oauth *)

type aws_cloudwatch_event_connection__auth_parameters = {
  api_key :
    aws_cloudwatch_event_connection__auth_parameters__api_key list;
  basic :
    aws_cloudwatch_event_connection__auth_parameters__basic list;
  invocation_http_parameters :
    aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters
    list;
  oauth :
    aws_cloudwatch_event_connection__auth_parameters__oauth list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters *)

type aws_cloudwatch_event_connection = {
  authorization_type : string prop;  (** authorization_type *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  auth_parameters :
    aws_cloudwatch_event_connection__auth_parameters list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection *)

type t = {
  arn : string prop;
  authorization_type : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  secret_arn : string prop;
}

let aws_cloudwatch_event_connection ?description ?id
    ~authorization_type ~name ~auth_parameters __resource_id =
  let __resource_type = "aws_cloudwatch_event_connection" in
  let __resource =
    ({ authorization_type; description; id; name; auth_parameters }
      : aws_cloudwatch_event_connection)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_event_connection __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       authorization_type =
         Prop.computed __resource_type __resource_id
           "authorization_type";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       secret_arn =
         Prop.computed __resource_type __resource_id "secret_arn";
     }
      : t)
  in
  __resource_attributes
