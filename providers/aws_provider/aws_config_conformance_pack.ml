(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_config_conformance_pack__input_parameter = {
  parameter_name : string prop;  (** parameter_name *)
  parameter_value : string prop;  (** parameter_value *)
}
[@@deriving yojson_of]
(** aws_config_conformance_pack__input_parameter *)

type aws_config_conformance_pack = {
  delivery_s3_bucket : string prop option; [@option]
      (** delivery_s3_bucket *)
  delivery_s3_key_prefix : string prop option; [@option]
      (** delivery_s3_key_prefix *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  template_body : string prop option; [@option]  (** template_body *)
  template_s3_uri : string prop option; [@option]
      (** template_s3_uri *)
  input_parameter : aws_config_conformance_pack__input_parameter list;
}
[@@deriving yojson_of]
(** aws_config_conformance_pack *)

let aws_config_conformance_pack ?delivery_s3_bucket
    ?delivery_s3_key_prefix ?id ?template_body ?template_s3_uri ~name
    ~input_parameter __resource_id =
  let __resource_type = "aws_config_conformance_pack" in
  let __resource =
    {
      delivery_s3_bucket;
      delivery_s3_key_prefix;
      id;
      name;
      template_body;
      template_s3_uri;
      input_parameter;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_conformance_pack __resource);
  ()
