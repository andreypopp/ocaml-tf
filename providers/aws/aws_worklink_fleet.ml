(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity_provider = {
  saml_metadata : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity_provider) -> ()

let yojson_of_identity_provider =
  (function
   | { saml_metadata = v_saml_metadata; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_saml_metadata in
         ("saml_metadata", arg) :: bnds
       in
       `Assoc bnds
    : identity_provider -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity_provider

[@@@deriving.end]

type network = {
  security_group_ids : string prop list;
  subnet_ids : string prop list;
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network) -> ()

let yojson_of_network =
  (function
   | {
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
       vpc_id = v_vpc_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vpc_id in
         ("vpc_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_subnet_ids
         in
         ("subnet_ids", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_security_group_ids
         in
         ("security_group_ids", arg) :: bnds
       in
       `Assoc bnds
    : network -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network

[@@@deriving.end]

type aws_worklink_fleet = {
  audit_stream_arn : string prop option; [@option]
  device_ca_certificate : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  optimize_for_end_user_location : bool prop option; [@option]
  identity_provider : identity_provider list;
  network : network list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_worklink_fleet) -> ()

let yojson_of_aws_worklink_fleet =
  (function
   | {
       audit_stream_arn = v_audit_stream_arn;
       device_ca_certificate = v_device_ca_certificate;
       display_name = v_display_name;
       id = v_id;
       name = v_name;
       optimize_for_end_user_location =
         v_optimize_for_end_user_location;
       identity_provider = v_identity_provider;
       network = v_network;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_network v_network in
         ("network", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_identity_provider
             v_identity_provider
         in
         ("identity_provider", arg) :: bnds
       in
       let bnds =
         match v_optimize_for_end_user_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "optimize_for_end_user_location", arg in
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_ca_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_ca_certificate", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audit_stream_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audit_stream_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_worklink_fleet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_worklink_fleet

[@@@deriving.end]

let identity_provider ~saml_metadata ~type_ () : identity_provider =
  { saml_metadata; type_ }

let network ~security_group_ids ~subnet_ids ~vpc_id () : network =
  { security_group_ids; subnet_ids; vpc_id }

let aws_worklink_fleet ?audit_stream_arn ?device_ca_certificate
    ?display_name ?id ?optimize_for_end_user_location ~name
    ~identity_provider ~network () : aws_worklink_fleet =
  {
    audit_stream_arn;
    device_ca_certificate;
    display_name;
    id;
    name;
    optimize_for_end_user_location;
    identity_provider;
    network;
  }

type t = {
  arn : string prop;
  audit_stream_arn : string prop;
  company_code : string prop;
  created_time : string prop;
  device_ca_certificate : string prop;
  display_name : string prop;
  id : string prop;
  last_updated_time : string prop;
  name : string prop;
  optimize_for_end_user_location : bool prop;
}

let make ?audit_stream_arn ?device_ca_certificate ?display_name ?id
    ?optimize_for_end_user_location ~name ~identity_provider ~network
    __id =
  let __type = "aws_worklink_fleet" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       audit_stream_arn =
         Prop.computed __type __id "audit_stream_arn";
       company_code = Prop.computed __type __id "company_code";
       created_time = Prop.computed __type __id "created_time";
       device_ca_certificate =
         Prop.computed __type __id "device_ca_certificate";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       last_updated_time =
         Prop.computed __type __id "last_updated_time";
       name = Prop.computed __type __id "name";
       optimize_for_end_user_location =
         Prop.computed __type __id "optimize_for_end_user_location";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_worklink_fleet
        (aws_worklink_fleet ?audit_stream_arn ?device_ca_certificate
           ?display_name ?id ?optimize_for_end_user_location ~name
           ~identity_provider ~network ());
    attrs = __attrs;
  }

let register ?tf_module ?audit_stream_arn ?device_ca_certificate
    ?display_name ?id ?optimize_for_end_user_location ~name
    ~identity_provider ~network __id =
  let (r : _ Tf_core.resource) =
    make ?audit_stream_arn ?device_ca_certificate ?display_name ?id
      ?optimize_for_end_user_location ~name ~identity_provider
      ~network __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
