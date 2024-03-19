(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cors = {
  allow_credentials : bool prop option; [@option]
      (** allow_credentials *)
  allow_headers : string prop list option; [@option]
      (** allow_headers *)
  allow_methods : string prop list option; [@option]
      (** allow_methods *)
  allow_origins : string prop list option; [@option]
      (** allow_origins *)
  expose_headers : string prop list option; [@option]
      (** expose_headers *)
  max_age : float prop option; [@option]  (** max_age *)
}
[@@deriving yojson_of]
(** cors *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_lambda_function_url = {
  authorization_type : string prop;  (** authorization_type *)
  function_name : string prop;  (** function_name *)
  id : string prop option; [@option]  (** id *)
  invoke_mode : string prop option; [@option]  (** invoke_mode *)
  qualifier : string prop option; [@option]  (** qualifier *)
  cors : cors list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_lambda_function_url *)

let cors ?allow_credentials ?allow_headers ?allow_methods
    ?allow_origins ?expose_headers ?max_age () : cors =
  {
    allow_credentials;
    allow_headers;
    allow_methods;
    allow_origins;
    expose_headers;
    max_age;
  }

let timeouts ?create () : timeouts = { create }

let aws_lambda_function_url ?id ?invoke_mode ?qualifier ?timeouts
    ~authorization_type ~function_name ~cors () :
    aws_lambda_function_url =
  {
    authorization_type;
    function_name;
    id;
    invoke_mode;
    qualifier;
    cors;
    timeouts;
  }

type t = {
  authorization_type : string prop;
  function_arn : string prop;
  function_name : string prop;
  function_url : string prop;
  id : string prop;
  invoke_mode : string prop;
  qualifier : string prop;
  url_id : string prop;
}

let register ?tf_module ?id ?invoke_mode ?qualifier ?timeouts
    ~authorization_type ~function_name ~cors __resource_id =
  let __resource_type = "aws_lambda_function_url" in
  let __resource =
    aws_lambda_function_url ?id ?invoke_mode ?qualifier ?timeouts
      ~authorization_type ~function_name ~cors ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_function_url __resource);
  let __resource_attributes =
    ({
       authorization_type =
         Prop.computed __resource_type __resource_id
           "authorization_type";
       function_arn =
         Prop.computed __resource_type __resource_id "function_arn";
       function_name =
         Prop.computed __resource_type __resource_id "function_name";
       function_url =
         Prop.computed __resource_type __resource_id "function_url";
       id = Prop.computed __resource_type __resource_id "id";
       invoke_mode =
         Prop.computed __resource_type __resource_id "invoke_mode";
       qualifier =
         Prop.computed __resource_type __resource_id "qualifier";
       url_id = Prop.computed __resource_type __resource_id "url_id";
     }
      : t)
  in
  __resource_attributes
