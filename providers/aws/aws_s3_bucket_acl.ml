(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type access_control_policy__grant__grantee = {
  email_address : string prop option; [@option]
  id : string prop option; [@option]
  type_ : string prop; [@key "type"]
  uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_control_policy__grant__grantee) -> ()

let yojson_of_access_control_policy__grant__grantee =
  (function
   | {
       email_address = v_email_address;
       id = v_id;
       type_ = v_type_;
       uri = v_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "uri", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_email_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email_address", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : access_control_policy__grant__grantee ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_control_policy__grant__grantee

[@@@deriving.end]

type access_control_policy__grant = {
  permission : string prop;
  grantee : access_control_policy__grant__grantee list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_control_policy__grant) -> ()

let yojson_of_access_control_policy__grant =
  (function
   | { permission = v_permission; grantee = v_grantee } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_grantee then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_access_control_policy__grant__grantee)
               v_grantee
           in
           let bnd = "grantee", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_permission in
         ("permission", arg) :: bnds
       in
       `Assoc bnds
    : access_control_policy__grant ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_control_policy__grant

[@@@deriving.end]

type access_control_policy__owner = {
  display_name : string prop option; [@option]
  id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_control_policy__owner) -> ()

let yojson_of_access_control_policy__owner =
  (function
   | { display_name = v_display_name; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : access_control_policy__owner ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_control_policy__owner

[@@@deriving.end]

type access_control_policy = {
  grant : access_control_policy__grant list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  owner : access_control_policy__owner list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : access_control_policy) -> ()

let yojson_of_access_control_policy =
  (function
   | { grant = v_grant; owner = v_owner } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_owner then bnds
         else
           let arg =
             (yojson_of_list yojson_of_access_control_policy__owner)
               v_owner
           in
           let bnd = "owner", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_grant then bnds
         else
           let arg =
             (yojson_of_list yojson_of_access_control_policy__grant)
               v_grant
           in
           let bnd = "grant", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : access_control_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_access_control_policy

[@@@deriving.end]

type aws_s3_bucket_acl = {
  acl : string prop option; [@option]
  bucket : string prop;
  expected_bucket_owner : string prop option; [@option]
  id : string prop option; [@option]
  access_control_policy : access_control_policy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_s3_bucket_acl) -> ()

let yojson_of_aws_s3_bucket_acl =
  (function
   | {
       acl = v_acl;
       bucket = v_bucket;
       expected_bucket_owner = v_expected_bucket_owner;
       id = v_id;
       access_control_policy = v_access_control_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_access_control_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_access_control_policy)
               v_access_control_policy
           in
           let bnd = "access_control_policy", arg in
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
       let bnds =
         match v_expected_bucket_owner with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "expected_bucket_owner", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket in
         ("bucket", arg) :: bnds
       in
       let bnds =
         match v_acl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "acl", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_s3_bucket_acl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_s3_bucket_acl

[@@@deriving.end]

let access_control_policy__grant__grantee ?email_address ?id ?uri
    ~type_ () : access_control_policy__grant__grantee =
  { email_address; id; type_; uri }

let access_control_policy__grant ?(grantee = []) ~permission () :
    access_control_policy__grant =
  { permission; grantee }

let access_control_policy__owner ?display_name ~id () :
    access_control_policy__owner =
  { display_name; id }

let access_control_policy ~grant ~owner () : access_control_policy =
  { grant; owner }

let aws_s3_bucket_acl ?acl ?expected_bucket_owner ?id
    ?(access_control_policy = []) ~bucket () : aws_s3_bucket_acl =
  { acl; bucket; expected_bucket_owner; id; access_control_policy }

type t = {
  tf_name : string;
  acl : string prop;
  bucket : string prop;
  expected_bucket_owner : string prop;
  id : string prop;
}

let make ?acl ?expected_bucket_owner ?id
    ?(access_control_policy = []) ~bucket __id =
  let __type = "aws_s3_bucket_acl" in
  let __attrs =
    ({
       tf_name = __id;
       acl = Prop.computed __type __id "acl";
       bucket = Prop.computed __type __id "bucket";
       expected_bucket_owner =
         Prop.computed __type __id "expected_bucket_owner";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_acl
        (aws_s3_bucket_acl ?acl ?expected_bucket_owner ?id
           ~access_control_policy ~bucket ());
    attrs = __attrs;
  }

let register ?tf_module ?acl ?expected_bucket_owner ?id
    ?(access_control_policy = []) ~bucket __id =
  let (r : _ Tf_core.resource) =
    make ?acl ?expected_bucket_owner ?id ~access_control_policy
      ~bucket __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
