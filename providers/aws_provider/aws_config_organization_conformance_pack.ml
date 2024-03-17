(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_config_organization_conformance_pack__input_parameter = {
  parameter_name : string;  (** parameter_name *)
  parameter_value : string;  (** parameter_value *)
}
[@@deriving yojson_of]
(** aws_config_organization_conformance_pack__input_parameter *)

type aws_config_organization_conformance_pack__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_config_organization_conformance_pack__timeouts *)

type aws_config_organization_conformance_pack = {
  delivery_s3_bucket : string option; [@option]
      (** delivery_s3_bucket *)
  delivery_s3_key_prefix : string option; [@option]
      (** delivery_s3_key_prefix *)
  excluded_accounts : string list option; [@option]
      (** excluded_accounts *)
  name : string;  (** name *)
  template_body : string option; [@option]  (** template_body *)
  template_s3_uri : string option; [@option]  (** template_s3_uri *)
  input_parameter :
    aws_config_organization_conformance_pack__input_parameter list;
  timeouts :
    aws_config_organization_conformance_pack__timeouts option;
}
[@@deriving yojson_of]
(** aws_config_organization_conformance_pack *)

let aws_config_organization_conformance_pack ?delivery_s3_bucket
    ?delivery_s3_key_prefix ?excluded_accounts ?template_body
    ?template_s3_uri ?timeouts ~name ~input_parameter __resource_id =
  let __resource_type = "aws_config_organization_conformance_pack" in
  let __resource =
    {
      delivery_s3_bucket;
      delivery_s3_key_prefix;
      excluded_accounts;
      name;
      template_body;
      template_s3_uri;
      input_parameter;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_organization_conformance_pack __resource);
  ()
