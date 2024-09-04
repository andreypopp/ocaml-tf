(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type options = { protocol : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : options) -> ()

let yojson_of_options =
  (function
   | { protocol = v_protocol } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_options

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_networkmanager_connect_attachment = {
  core_network_id : string prop;
  edge_location : string prop;
  id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  transport_attachment_id : string prop;
  options : options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkmanager_connect_attachment) -> ()

let yojson_of_aws_networkmanager_connect_attachment =
  (function
   | {
       core_network_id = v_core_network_id;
       edge_location = v_edge_location;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       transport_attachment_id = v_transport_attachment_id;
       options = v_options;
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
         if Stdlib.( = ) [] v_options then bnds
         else
           let arg = (yojson_of_list yojson_of_options) v_options in
           let bnd = "options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_transport_attachment_id
         in
         ("transport_attachment_id", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_edge_location in
         ("edge_location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_core_network_id
         in
         ("core_network_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_networkmanager_connect_attachment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmanager_connect_attachment

[@@@deriving.end]

let options ?protocol () : options = { protocol }
let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_networkmanager_connect_attachment ?id ?tags ?tags_all
    ?timeouts ~core_network_id ~edge_location
    ~transport_attachment_id ~options () :
    aws_networkmanager_connect_attachment =
  {
    core_network_id;
    edge_location;
    id;
    tags;
    tags_all;
    transport_attachment_id;
    options;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  attachment_id : string prop;
  attachment_policy_rule_number : float prop;
  attachment_type : string prop;
  core_network_arn : string prop;
  core_network_id : string prop;
  edge_location : string prop;
  id : string prop;
  owner_account_id : string prop;
  resource_arn : string prop;
  segment_name : string prop;
  state : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  transport_attachment_id : string prop;
}

let make ?id ?tags ?tags_all ?timeouts ~core_network_id
    ~edge_location ~transport_attachment_id ~options __id =
  let __type = "aws_networkmanager_connect_attachment" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       attachment_id = Prop.computed __type __id "attachment_id";
       attachment_policy_rule_number =
         Prop.computed __type __id "attachment_policy_rule_number";
       attachment_type = Prop.computed __type __id "attachment_type";
       core_network_arn =
         Prop.computed __type __id "core_network_arn";
       core_network_id = Prop.computed __type __id "core_network_id";
       edge_location = Prop.computed __type __id "edge_location";
       id = Prop.computed __type __id "id";
       owner_account_id =
         Prop.computed __type __id "owner_account_id";
       resource_arn = Prop.computed __type __id "resource_arn";
       segment_name = Prop.computed __type __id "segment_name";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       transport_attachment_id =
         Prop.computed __type __id "transport_attachment_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_connect_attachment
        (aws_networkmanager_connect_attachment ?id ?tags ?tags_all
           ?timeouts ~core_network_id ~edge_location
           ~transport_attachment_id ~options ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~core_network_id ~edge_location ~transport_attachment_id ~options
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~core_network_id
      ~edge_location ~transport_attachment_id ~options __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
