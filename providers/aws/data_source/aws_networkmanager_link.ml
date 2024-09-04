(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bandwidth = {
  download_speed : float prop;
  upload_speed : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_upload_speed in
         ("upload_speed", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_download_speed in
         ("download_speed", arg) :: bnds
       in
       `Assoc bnds
    : bandwidth -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_bandwidth

[@@@deriving.end]

type aws_networkmanager_link = {
  global_network_id : string prop;
  id : string prop option; [@option]
  link_id : string prop;
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkmanager_link) -> ()

let yojson_of_aws_networkmanager_link =
  (function
   | {
       global_network_id = v_global_network_id;
       id = v_id;
       link_id = v_link_id;
       tags = v_tags;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_link_id in
         ("link_id", arg) :: bnds
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
       `Assoc bnds
    : aws_networkmanager_link -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmanager_link

[@@@deriving.end]

let aws_networkmanager_link ?id ?tags ~global_network_id ~link_id ()
    : aws_networkmanager_link =
  { global_network_id; id; link_id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  bandwidth : bandwidth list prop;
  description : string prop;
  global_network_id : string prop;
  id : string prop;
  link_id : string prop;
  provider_name : string prop;
  site_id : string prop;
  tags : string Tf_core.assoc prop;
  type_ : string prop;
}

let make ?id ?tags ~global_network_id ~link_id __id =
  let __type = "aws_networkmanager_link" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       bandwidth = Prop.computed __type __id "bandwidth";
       description = Prop.computed __type __id "description";
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       link_id = Prop.computed __type __id "link_id";
       provider_name = Prop.computed __type __id "provider_name";
       site_id = Prop.computed __type __id "site_id";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_link
        (aws_networkmanager_link ?id ?tags ~global_network_id
           ~link_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~global_network_id ~link_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~global_network_id ~link_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
