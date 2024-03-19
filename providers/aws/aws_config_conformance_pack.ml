(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type input_parameter = {
  parameter_name : string prop;  (** parameter_name *)
  parameter_value : string prop;  (** parameter_value *)
}
[@@deriving yojson_of]
(** input_parameter *)

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
  input_parameter : input_parameter list;
}
[@@deriving yojson_of]
(** aws_config_conformance_pack *)

let input_parameter ~parameter_name ~parameter_value () :
    input_parameter =
  { parameter_name; parameter_value }

let aws_config_conformance_pack ?delivery_s3_bucket
    ?delivery_s3_key_prefix ?id ?template_body ?template_s3_uri ~name
    ~input_parameter () : aws_config_conformance_pack =
  {
    delivery_s3_bucket;
    delivery_s3_key_prefix;
    id;
    name;
    template_body;
    template_s3_uri;
    input_parameter;
  }

type t = {
  arn : string prop;
  delivery_s3_bucket : string prop;
  delivery_s3_key_prefix : string prop;
  id : string prop;
  name : string prop;
  template_body : string prop;
  template_s3_uri : string prop;
}

let register ?tf_module ?delivery_s3_bucket ?delivery_s3_key_prefix
    ?id ?template_body ?template_s3_uri ~name ~input_parameter
    __resource_id =
  let __resource_type = "aws_config_conformance_pack" in
  let __resource =
    aws_config_conformance_pack ?delivery_s3_bucket
      ?delivery_s3_key_prefix ?id ?template_body ?template_s3_uri
      ~name ~input_parameter ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_config_conformance_pack __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       delivery_s3_bucket =
         Prop.computed __resource_type __resource_id
           "delivery_s3_bucket";
       delivery_s3_key_prefix =
         Prop.computed __resource_type __resource_id
           "delivery_s3_key_prefix";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       template_body =
         Prop.computed __resource_type __resource_id "template_body";
       template_s3_uri =
         Prop.computed __resource_type __resource_id
           "template_s3_uri";
     }
      : t)
  in
  __resource_attributes
