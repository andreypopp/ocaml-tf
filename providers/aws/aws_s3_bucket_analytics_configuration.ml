(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  prefix : string prop option; [@option]  (** prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** filter *)

type storage_class_analysis__data_export__destination__s3_bucket_destination = {
  bucket_account_id : string prop option; [@option]
      (** bucket_account_id *)
  bucket_arn : string prop;  (** bucket_arn *)
  format : string prop option; [@option]  (** format *)
  prefix : string prop option; [@option]  (** prefix *)
}
[@@deriving yojson_of]
(** storage_class_analysis__data_export__destination__s3_bucket_destination *)

type storage_class_analysis__data_export__destination = {
  s3_bucket_destination :
    storage_class_analysis__data_export__destination__s3_bucket_destination
    list;
}
[@@deriving yojson_of]
(** storage_class_analysis__data_export__destination *)

type storage_class_analysis__data_export = {
  output_schema_version : string prop option; [@option]
      (** output_schema_version *)
  destination : storage_class_analysis__data_export__destination list;
}
[@@deriving yojson_of]
(** storage_class_analysis__data_export *)

type storage_class_analysis = {
  data_export : storage_class_analysis__data_export list;
}
[@@deriving yojson_of]
(** storage_class_analysis *)

type aws_s3_bucket_analytics_configuration = {
  bucket : string prop;  (** bucket *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  filter : filter list;
  storage_class_analysis : storage_class_analysis list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_analytics_configuration *)

let filter ?prefix ?tags () : filter = { prefix; tags }

let storage_class_analysis__data_export__destination__s3_bucket_destination
    ?bucket_account_id ?format ?prefix ~bucket_arn () :
    storage_class_analysis__data_export__destination__s3_bucket_destination
    =
  { bucket_account_id; bucket_arn; format; prefix }

let storage_class_analysis__data_export__destination
    ~s3_bucket_destination () :
    storage_class_analysis__data_export__destination =
  { s3_bucket_destination }

let storage_class_analysis__data_export ?output_schema_version
    ~destination () : storage_class_analysis__data_export =
  { output_schema_version; destination }

let storage_class_analysis ~data_export () : storage_class_analysis =
  { data_export }

let aws_s3_bucket_analytics_configuration ?id ~bucket ~name ~filter
    ~storage_class_analysis () :
    aws_s3_bucket_analytics_configuration =
  { bucket; id; name; filter; storage_class_analysis }

type t = {
  bucket : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ~bucket ~name ~filter ~storage_class_analysis __id =
  let __type = "aws_s3_bucket_analytics_configuration" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_analytics_configuration
        (aws_s3_bucket_analytics_configuration ?id ~bucket ~name
           ~filter ~storage_class_analysis ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bucket ~name ~filter
    ~storage_class_analysis __id =
  let (r : _ Tf_core.resource) =
    make ?id ~bucket ~name ~filter ~storage_class_analysis __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
