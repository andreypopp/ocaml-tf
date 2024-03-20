(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type s3_destination = {
  bucket_name : string prop;  (** bucket_name *)
  key_prefix : string prop option; [@option]  (** key_prefix *)
  kms_key_arn : string prop;  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** s3_destination *)

type aws_macie2_classification_export_configuration = {
  id : string prop option; [@option]  (** id *)
  s3_destination : s3_destination list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_export_configuration *)

let s3_destination ?key_prefix ~bucket_name ~kms_key_arn () :
    s3_destination =
  { bucket_name; key_prefix; kms_key_arn }

let aws_macie2_classification_export_configuration ?id
    ~s3_destination () :
    aws_macie2_classification_export_configuration =
  { id; s3_destination }

type t = { id : string prop }

let make ?id ~s3_destination __id =
  let __type = "aws_macie2_classification_export_configuration" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_macie2_classification_export_configuration
        (aws_macie2_classification_export_configuration ?id
           ~s3_destination ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~s3_destination __id =
  let (r : _ Tf_core.resource) = make ?id ~s3_destination __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
