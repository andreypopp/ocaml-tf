(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type package_source = {
  s3_bucket_name : string prop;
  s3_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : package_source) -> ()

let yojson_of_package_source =
  (function
   | { s3_bucket_name = v_s3_bucket_name; s3_key = v_s3_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_key in
         ("s3_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_s3_bucket_name
         in
         ("s3_bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : package_source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_package_source

[@@@deriving.end]

type aws_opensearch_package = {
  id : string prop option; [@option]
  package_description : string prop option; [@option]
  package_name : string prop;
  package_type : string prop;
  package_source : package_source list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opensearch_package) -> ()

let yojson_of_aws_opensearch_package =
  (function
   | {
       id = v_id;
       package_description = v_package_description;
       package_name = v_package_name;
       package_type = v_package_type;
       package_source = v_package_source;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_package_source then bnds
         else
           let arg =
             (yojson_of_list yojson_of_package_source)
               v_package_source
           in
           let bnd = "package_source", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_package_type in
         ("package_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_package_name in
         ("package_name", arg) :: bnds
       in
       let bnds =
         match v_package_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "package_description", arg in
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
    : aws_opensearch_package -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opensearch_package

[@@@deriving.end]

let package_source ~s3_bucket_name ~s3_key () : package_source =
  { s3_bucket_name; s3_key }

let aws_opensearch_package ?id ?package_description ~package_name
    ~package_type ~package_source () : aws_opensearch_package =
  {
    id;
    package_description;
    package_name;
    package_type;
    package_source;
  }

type t = {
  tf_name : string;
  available_package_version : string prop;
  id : string prop;
  package_description : string prop;
  package_id : string prop;
  package_name : string prop;
  package_type : string prop;
}

let make ?id ?package_description ~package_name ~package_type
    ~package_source __id =
  let __type = "aws_opensearch_package" in
  let __attrs =
    ({
       tf_name = __id;
       available_package_version =
         Prop.computed __type __id "available_package_version";
       id = Prop.computed __type __id "id";
       package_description =
         Prop.computed __type __id "package_description";
       package_id = Prop.computed __type __id "package_id";
       package_name = Prop.computed __type __id "package_name";
       package_type = Prop.computed __type __id "package_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearch_package
        (aws_opensearch_package ?id ?package_description
           ~package_name ~package_type ~package_source ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?package_description ~package_name
    ~package_type ~package_source __id =
  let (r : _ Tf_core.resource) =
    make ?id ?package_description ~package_name ~package_type
      ~package_source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
