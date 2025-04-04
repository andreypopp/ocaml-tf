(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_dx_connection = {
  bandwidth : string prop;
  encryption_mode : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  provider_name : string prop option; [@option]
  request_macsec : bool prop option; [@option]
  skip_destroy : bool prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dx_connection) -> ()

let yojson_of_aws_dx_connection =
  (function
   | {
       bandwidth = v_bandwidth;
       encryption_mode = v_encryption_mode;
       id = v_id;
       location = v_location;
       name = v_name;
       provider_name = v_provider_name;
       request_macsec = v_request_macsec;
       skip_destroy = v_skip_destroy;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
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
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_destroy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_destroy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_request_macsec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "request_macsec", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provider_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provider_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_encryption_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "encryption_mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bandwidth in
         ("bandwidth", arg) :: bnds
       in
       `Assoc bnds
    : aws_dx_connection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dx_connection

[@@@deriving.end]

let aws_dx_connection ?encryption_mode ?id ?provider_name
    ?request_macsec ?skip_destroy ?tags ?tags_all ~bandwidth
    ~location ~name () : aws_dx_connection =
  {
    bandwidth;
    encryption_mode;
    id;
    location;
    name;
    provider_name;
    request_macsec;
    skip_destroy;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  aws_device : string prop;
  bandwidth : string prop;
  encryption_mode : string prop;
  has_logical_redundancy : string prop;
  id : string prop;
  jumbo_frame_capable : bool prop;
  location : string prop;
  macsec_capable : bool prop;
  name : string prop;
  owner_account_id : string prop;
  partner_name : string prop;
  port_encryption_status : string prop;
  provider_name : string prop;
  request_macsec : bool prop;
  skip_destroy : bool prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vlan_id : float prop;
}

let make ?encryption_mode ?id ?provider_name ?request_macsec
    ?skip_destroy ?tags ?tags_all ~bandwidth ~location ~name __id =
  let __type = "aws_dx_connection" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       aws_device = Prop.computed __type __id "aws_device";
       bandwidth = Prop.computed __type __id "bandwidth";
       encryption_mode = Prop.computed __type __id "encryption_mode";
       has_logical_redundancy =
         Prop.computed __type __id "has_logical_redundancy";
       id = Prop.computed __type __id "id";
       jumbo_frame_capable =
         Prop.computed __type __id "jumbo_frame_capable";
       location = Prop.computed __type __id "location";
       macsec_capable = Prop.computed __type __id "macsec_capable";
       name = Prop.computed __type __id "name";
       owner_account_id =
         Prop.computed __type __id "owner_account_id";
       partner_name = Prop.computed __type __id "partner_name";
       port_encryption_status =
         Prop.computed __type __id "port_encryption_status";
       provider_name = Prop.computed __type __id "provider_name";
       request_macsec = Prop.computed __type __id "request_macsec";
       skip_destroy = Prop.computed __type __id "skip_destroy";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vlan_id = Prop.computed __type __id "vlan_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_connection
        (aws_dx_connection ?encryption_mode ?id ?provider_name
           ?request_macsec ?skip_destroy ?tags ?tags_all ~bandwidth
           ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?encryption_mode ?id ?provider_name
    ?request_macsec ?skip_destroy ?tags ?tags_all ~bandwidth
    ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?encryption_mode ?id ?provider_name ?request_macsec
      ?skip_destroy ?tags ?tags_all ~bandwidth ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
