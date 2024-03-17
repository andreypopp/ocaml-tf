(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ssm_parameter = {
  allowed_pattern : string option; [@option]  (** allowed_pattern *)
  arn : string option; [@option]  (** arn *)
  data_type : string option; [@option]  (** data_type *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  insecure_value : string option; [@option]  (** insecure_value *)
  key_id : string option; [@option]  (** key_id *)
  name : string;  (** name *)
  overwrite : bool option; [@option]  (** overwrite *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  tier : string option; [@option]  (** tier *)
  type_ : string; [@key "type"]  (** type *)
  value : string option; [@option]  (** value *)
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
