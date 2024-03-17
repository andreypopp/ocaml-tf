(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lambda_alias__routing_config = {
  additional_version_weights : (string * float) list option; [@option]
      (** additional_version_weights *)
}
[@@deriving yojson_of]
(** aws_lambda_alias__routing_config *)

type aws_lambda_alias = {
  description : string option; [@option]  (** description *)
  function_name : string;  (** function_name *)
  function_version : string;  (** function_version *)
  name : string;  (** name *)
  routing_config : aws_lambda_alias__routing_config list;
}
[@@deriving yojson_of]
(** aws_lambda_alias *)

let aws_lambda_alias ?description ~function_name ~function_version
    ~name ~routing_config __resource_id =
  let __resource_type = "aws_lambda_alias" in
  let __resource =
    {
      description;
      function_name;
      function_version;
      name;
      routing_config;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_alias __resource);
  ()
