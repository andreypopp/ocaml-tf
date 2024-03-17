(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lambda_function_url__cors = {
  allow_credentials : bool option; [@option]
      (** allow_credentials *)
  allow_headers : string list option; [@option]  (** allow_headers *)
  allow_methods : string list option; [@option]  (** allow_methods *)
  allow_origins : string list option; [@option]  (** allow_origins *)
  expose_headers : string list option; [@option]
      (** expose_headers *)
  max_age : float option; [@option]  (** max_age *)
}
[@@deriving yojson_of]
(** aws_lambda_function_url__cors *)

type aws_lambda_function_url__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_lambda_function_url__timeouts *)

type aws_lambda_function_url = {
  authorization_type : string;  (** authorization_type *)
  function_name : string;  (** function_name *)
  id : string option; [@option]  (** id *)
  invoke_mode : string option; [@option]  (** invoke_mode *)
  qualifier : string option; [@option]  (** qualifier *)
  cors : aws_lambda_function_url__cors list;
  timeouts : aws_lambda_function_url__timeouts option;
}
[@@deriving yojson_of]
(** aws_lambda_function_url *)

let aws_lambda_function_url ?id ?invoke_mode ?qualifier ?timeouts
    ~authorization_type ~function_name ~cors __resource_id =
  let __resource_type = "aws_lambda_function_url" in
  let __resource =
    {
      authorization_type;
      function_name;
      id;
      invoke_mode;
      qualifier;
      cors;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_function_url __resource);
  ()
