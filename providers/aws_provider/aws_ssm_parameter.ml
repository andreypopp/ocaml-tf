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

let aws_ssm_parameter ?allowed_pattern ?arn ?data_type ?description
    ?id ?insecure_value ?key_id ?overwrite ?tags ?tags_all ?tier
    ?value ~name ~type_ __resource_id =
  let __resource_type = "aws_ssm_parameter" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ssm_parameter __resource);
  ()
