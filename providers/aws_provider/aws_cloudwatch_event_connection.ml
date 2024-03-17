(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloudwatch_event_connection__auth_parameters__api_key = {
  key : string;  (** key *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__api_key *)

type aws_cloudwatch_event_connection__auth_parameters__basic = {
  password : string;  (** password *)
  username : string;  (** username *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__basic *)

type aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters__body = {
  is_value_secret : bool option; [@option]  (** is_value_secret *)
  key : string option; [@option]  (** key *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters__body *)

type aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters__header = {
  is_value_secret : bool option; [@option]  (** is_value_secret *)
  key : string option; [@option]  (** key *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters__header *)

type aws_cloudwatch_event_connection__auth_parameters__invocation_http_parameters__query_string = {
  is_value_secret : bool option; [@option]  (** is_value_secret *)
  key : string option; [@option]  (** key *)
  value : string option; [@option]  (** value *)
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
  client_id : string;  (** client_id *)
  client_secret : string;  (** client_secret *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__oauth__client_parameters *)

type aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters__body = {
  is_value_secret : bool option; [@option]  (** is_value_secret *)
  key : string option; [@option]  (** key *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters__body *)

type aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters__header = {
  is_value_secret : bool option; [@option]  (** is_value_secret *)
  key : string option; [@option]  (** key *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters__header *)

type aws_cloudwatch_event_connection__auth_parameters__oauth__oauth_http_parameters__query_string = {
  is_value_secret : bool option; [@option]  (** is_value_secret *)
  key : string option; [@option]  (** key *)
  value : string option; [@option]  (** value *)
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
  authorization_endpoint : string;  (** authorization_endpoint *)
  http_method : string;  (** http_method *)
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
  authorization_type : string;  (** authorization_type *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  auth_parameters :
    aws_cloudwatch_event_connection__auth_parameters list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_connection *)

let aws_cloudwatch_event_connection ?description ~authorization_type
    ~name ~auth_parameters __resource_id =
  let __resource_type = "aws_cloudwatch_event_connection" in
  let __resource =
    { authorization_type; description; name; auth_parameters }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_event_connection __resource);
  ()
