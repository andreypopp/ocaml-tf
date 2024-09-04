(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bandwidth = {
  download_speed : float prop option; [@option]
  upload_speed : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : bandwidth) -> ()

let yojson_of_bandwidth =
  (function
   | {
       download_speed = v_download_speed;
       upload_speed = v_upload_speed;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_upload_speed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "upload_speed", arg in
             bnd :: bnds
       in
       let bnds =
         match v_download_speed with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "download_speed", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : bandwidth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bandwidth

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_networkmanager_link = {
  description : string prop option; [@option]
  global_network_id : string prop;
  id : string prop option; [@option]
  provider_name : string prop option; [@option]
  site_id : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  bandwidth : bandwidth list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkmanager_link) -> ()

let yojson_of_aws_networkmanager_link =
  (function
   | {
       description = v_description;
       global_network_id = v_global_network_id;
       id = v_id;
       provider_name = v_provider_name;
       site_id = v_site_id;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       bandwidth = v_bandwidth;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_bandwidth then bnds
         else
           let arg =
             (yojson_of_list yojson_of_bandwidth) v_bandwidth
           in
           let bnd = "bandwidth", arg in
           bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_site_id in
         ("site_id", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_global_network_id
         in
         ("global_network_id", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_networkmanager_link -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmanager_link

[@@@deriving.end]

let bandwidth ?download_speed ?upload_speed () : bandwidth =
  { download_speed; upload_speed }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_networkmanager_link ?description ?id ?provider_name ?tags
    ?tags_all ?type_ ?timeouts ~global_network_id ~site_id ~bandwidth
    () : aws_networkmanager_link =
  {
    description;
    global_network_id;
    id;
    provider_name;
    site_id;
    tags;
    tags_all;
    type_;
    bandwidth;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  global_network_id : string prop;
  id : string prop;
  provider_name : string prop;
  site_id : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  type_ : string prop;
}

let make ?description ?id ?provider_name ?tags ?tags_all ?type_
    ?timeouts ~global_network_id ~site_id ~bandwidth __id =
  let __type = "aws_networkmanager_link" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       provider_name = Prop.computed __type __id "provider_name";
       site_id = Prop.computed __type __id "site_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_link
        (aws_networkmanager_link ?description ?id ?provider_name
           ?tags ?tags_all ?type_ ?timeouts ~global_network_id
           ~site_id ~bandwidth ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?provider_name ?tags
    ?tags_all ?type_ ?timeouts ~global_network_id ~site_id ~bandwidth
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?provider_name ?tags ?tags_all ?type_
      ?timeouts ~global_network_id ~site_id ~bandwidth __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
