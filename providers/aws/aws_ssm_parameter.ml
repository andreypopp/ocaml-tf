(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_parameter = {
  allowed_pattern : string prop option; [@option]
      (** allowed_pattern *)
  arn : string prop option; [@option]  (** arn *)
  data_type : string prop option; [@option]  (** data_type *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  insecure_value : string prop option; [@option]
      (** insecure_value *)
  key_id : string prop option; [@option]  (** key_id *)
  name : string prop;  (** name *)
  overwrite : bool prop option; [@option]  (** overwrite *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  tier : string prop option; [@option]  (** tier *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_ssm_parameter *)

type t = {
  allowed_pattern : string prop;
  arn : string prop;
  data_type : string prop;
  description : string prop;
  id : string prop;
  insecure_value : string prop;
  key_id : string prop;
  name : string prop;
  overwrite : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tier : string prop;
  type_ : string prop;
  value : string prop;
  version : float prop;
}

let aws_ssm_parameter ?allowed_pattern ?arn ?data_type ?description
    ?id ?insecure_value ?key_id ?overwrite ?tags ?tags_all ?tier
    ?value ~name ~type_ __resource_id =
  let __resource_type = "aws_ssm_parameter" in
  let __resource =
    ({
       allowed_pattern;
       arn;
       data_type;
       description;
       id;
       insecure_value;
       key_id;
       name;
       overwrite;
       tags;
       tags_all;
       tier;
       type_;
       value;
     }
      : aws_ssm_parameter)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_parameter __resource);
  let __resource_attributes =
    ({
       allowed_pattern =
         Prop.computed __resource_type __resource_id
           "allowed_pattern";
       arn = Prop.computed __resource_type __resource_id "arn";
       data_type =
         Prop.computed __resource_type __resource_id "data_type";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       insecure_value =
         Prop.computed __resource_type __resource_id "insecure_value";
       key_id = Prop.computed __resource_type __resource_id "key_id";
       name = Prop.computed __resource_type __resource_id "name";
       overwrite =
         Prop.computed __resource_type __resource_id "overwrite";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       tier = Prop.computed __resource_type __resource_id "tier";
       type_ = Prop.computed __resource_type __resource_id "type";
       value = Prop.computed __resource_type __resource_id "value";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
