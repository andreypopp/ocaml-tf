(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cache_attributes = {
  cache_stale_timeout_in_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cache_attributes) -> ()

let yojson_of_cache_attributes =
  (function
   | {
       cache_stale_timeout_in_seconds =
         v_cache_stale_timeout_in_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_cache_stale_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cache_stale_timeout_in_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cache_attributes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cache_attributes

[@@@deriving.end]

type aws_storagegateway_file_system_association = {
  audit_destination_arn : string prop option; [@option]
  gateway_arn : string prop;
  id : string prop option; [@option]
  location_arn : string prop;
  password : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  username : string prop;
  cache_attributes : cache_attributes list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_storagegateway_file_system_association) -> ()

let yojson_of_aws_storagegateway_file_system_association =
  (function
   | {
       audit_destination_arn = v_audit_destination_arn;
       gateway_arn = v_gateway_arn;
       id = v_id;
       location_arn = v_location_arn;
       password = v_password;
       tags = v_tags;
       tags_all = v_tags_all;
       username = v_username;
       cache_attributes = v_cache_attributes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_cache_attributes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cache_attributes)
               v_cache_attributes
           in
           let bnd = "cache_attributes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_password in
         ("password", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location_arn in
         ("location_arn", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_gateway_arn in
         ("gateway_arn", arg) :: bnds
       in
       let bnds =
         match v_audit_destination_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audit_destination_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_storagegateway_file_system_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_storagegateway_file_system_association

[@@@deriving.end]

let cache_attributes ?cache_stale_timeout_in_seconds () :
    cache_attributes =
  { cache_stale_timeout_in_seconds }

let aws_storagegateway_file_system_association ?audit_destination_arn
    ?id ?tags ?tags_all ?(cache_attributes = []) ~gateway_arn
    ~location_arn ~password ~username () :
    aws_storagegateway_file_system_association =
  {
    audit_destination_arn;
    gateway_arn;
    id;
    location_arn;
    password;
    tags;
    tags_all;
    username;
    cache_attributes;
  }

type t = {
  tf_name : string;
  arn : string prop;
  audit_destination_arn : string prop;
  gateway_arn : string prop;
  id : string prop;
  location_arn : string prop;
  password : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  username : string prop;
}

let make ?audit_destination_arn ?id ?tags ?tags_all
    ?(cache_attributes = []) ~gateway_arn ~location_arn ~password
    ~username __id =
  let __type = "aws_storagegateway_file_system_association" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       audit_destination_arn =
         Prop.computed __type __id "audit_destination_arn";
       gateway_arn = Prop.computed __type __id "gateway_arn";
       id = Prop.computed __type __id "id";
       location_arn = Prop.computed __type __id "location_arn";
       password = Prop.computed __type __id "password";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_storagegateway_file_system_association
        (aws_storagegateway_file_system_association
           ?audit_destination_arn ?id ?tags ?tags_all
           ~cache_attributes ~gateway_arn ~location_arn ~password
           ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?audit_destination_arn ?id ?tags ?tags_all
    ?(cache_attributes = []) ~gateway_arn ~location_arn ~password
    ~username __id =
  let (r : _ Tf_core.resource) =
    make ?audit_destination_arn ?id ?tags ?tags_all ~cache_attributes
      ~gateway_arn ~location_arn ~password ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
