(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type s3_destination = {
  bucket_name : string prop;
  key_prefix : string prop option; [@option]
  kms_key_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : s3_destination) -> ()

let yojson_of_s3_destination =
  (function
   | {
       bucket_name = v_bucket_name;
       key_prefix = v_key_prefix;
       kms_key_arn = v_kms_key_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_arn in
         ("kms_key_arn", arg) :: bnds
       in
       let bnds =
         match v_key_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : s3_destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_s3_destination

[@@@deriving.end]

type aws_macie2_classification_export_configuration = {
  id : string prop option; [@option]
  s3_destination : s3_destination list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_macie2_classification_export_configuration) -> ()

let yojson_of_aws_macie2_classification_export_configuration =
  (function
   | { id = v_id; s3_destination = v_s3_destination } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_s3_destination then bnds
         else
           let arg =
             (yojson_of_list yojson_of_s3_destination)
               v_s3_destination
           in
           let bnd = "s3_destination", arg in
           bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_macie2_classification_export_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_macie2_classification_export_configuration

[@@@deriving.end]

let s3_destination ?key_prefix ~bucket_name ~kms_key_arn () :
    s3_destination =
  { bucket_name; key_prefix; kms_key_arn }

let aws_macie2_classification_export_configuration ?id
    ?(s3_destination = []) () :
    aws_macie2_classification_export_configuration =
  { id; s3_destination }

type t = { tf_name : string; id : string prop }

let make ?id ?(s3_destination = []) __id =
  let __type = "aws_macie2_classification_export_configuration" in
  let __attrs =
    ({ tf_name = __id; id = Prop.computed __type __id "id" } : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_macie2_classification_export_configuration
        (aws_macie2_classification_export_configuration ?id
           ~s3_destination ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(s3_destination = []) __id =
  let (r : _ Tf_core.resource) = make ?id ~s3_destination __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
