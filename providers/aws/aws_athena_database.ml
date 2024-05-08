(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type acl_configuration = { s3_acl_option : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : acl_configuration) -> ()

let yojson_of_acl_configuration =
  (function
   | { s3_acl_option = v_s3_acl_option } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_acl_option in
         ("s3_acl_option", arg) :: bnds
       in
       `Assoc bnds
    : acl_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_acl_configuration

[@@@deriving.end]

type encryption_configuration = {
  encryption_option : string prop;
  kms_key : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : encryption_configuration) -> ()

let yojson_of_encryption_configuration =
  (function
   | { encryption_option = v_encryption_option; kms_key = v_kms_key }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_kms_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_encryption_option
         in
         ("encryption_option", arg) :: bnds
       in
       `Assoc bnds
    : encryption_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_encryption_configuration

[@@@deriving.end]

type aws_athena_database = {
  bucket : string prop option; [@option]
  comment : string prop option; [@option]
  expected_bucket_owner : string prop option; [@option]
  force_destroy : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  properties : (string * string prop) list option; [@option]
  acl_configuration : acl_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  encryption_configuration : encryption_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_athena_database) -> ()

let yojson_of_aws_athena_database =
  (function
   | {
       bucket = v_bucket;
       comment = v_comment;
       expected_bucket_owner = v_expected_bucket_owner;
       force_destroy = v_force_destroy;
       id = v_id;
       name = v_name;
       properties = v_properties;
       acl_configuration = v_acl_configuration;
       encryption_configuration = v_encryption_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_encryption_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_encryption_configuration)
               v_encryption_configuration
           in
           let bnd = "encryption_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_acl_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_acl_configuration)
               v_acl_configuration
           in
           let bnd = "acl_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "properties", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_force_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expected_bucket_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expected_bucket_owner", arg in
             bnd :: bnds
       in
       let bnds =
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bucket with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_athena_database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_athena_database

[@@@deriving.end]

let acl_configuration ~s3_acl_option () : acl_configuration =
  { s3_acl_option }

let encryption_configuration ?kms_key ~encryption_option () :
    encryption_configuration =
  { encryption_option; kms_key }

let aws_athena_database ?bucket ?comment ?expected_bucket_owner
    ?force_destroy ?id ?properties ?(acl_configuration = [])
    ?(encryption_configuration = []) ~name () : aws_athena_database =
  {
    bucket;
    comment;
    expected_bucket_owner;
    force_destroy;
    id;
    name;
    properties;
    acl_configuration;
    encryption_configuration;
  }

type t = {
  tf_name : string;
  bucket : string prop;
  comment : string prop;
  expected_bucket_owner : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  properties : (string * string) list prop;
}

let make ?bucket ?comment ?expected_bucket_owner ?force_destroy ?id
    ?properties ?(acl_configuration = [])
    ?(encryption_configuration = []) ~name __id =
  let __type = "aws_athena_database" in
  let __attrs =
    ({
       tf_name = __id;
       bucket = Prop.computed __type __id "bucket";
       comment = Prop.computed __type __id "comment";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       properties = Prop.computed __type __id "properties";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_athena_database
        (aws_athena_database ?bucket ?comment ?expected_bucket_owner
           ?force_destroy ?id ?properties ~acl_configuration
           ~encryption_configuration ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?bucket ?comment ?expected_bucket_owner
    ?force_destroy ?id ?properties ?(acl_configuration = [])
    ?(encryption_configuration = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?bucket ?comment ?expected_bucket_owner ?force_destroy ?id
      ?properties ~acl_configuration ~encryption_configuration ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
