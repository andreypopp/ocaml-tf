(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destinations = { stream_name : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : destinations) -> ()

let yojson_of_destinations =
  (function
   | { stream_name = v_stream_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_stream_name in
         ("stream_name", arg) :: bnds
       in
       `Assoc bnds
    : destinations -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destinations

[@@@deriving.end]

type input_devices = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : input_devices) -> ()

let yojson_of_input_devices =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : input_devices -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_devices

[@@@deriving.end]

type media_connect_flows = { flow_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : media_connect_flows) -> ()

let yojson_of_media_connect_flows =
  (function
   | { flow_arn = v_flow_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_flow_arn in
         ("flow_arn", arg) :: bnds
       in
       `Assoc bnds
    : media_connect_flows -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_media_connect_flows

[@@@deriving.end]

type sources = {
  password_param : string prop;
  url : string prop;
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sources) -> ()

let yojson_of_sources =
  (function
   | {
       password_param = v_password_param;
       url = v_url;
       username = v_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_username in
         ("username", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_url in
         ("url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_password_param
         in
         ("password_param", arg) :: bnds
       in
       `Assoc bnds
    : sources -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sources

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

type vpc = {
  security_group_ids : string prop list option; [@option]
  subnet_ids : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc) -> ()

let yojson_of_vpc =
  (function
   | {
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : vpc -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc

[@@@deriving.end]

type aws_medialive_input = {
  id : string prop option; [@option]
  input_security_groups : string prop list option; [@option]
  name : string prop;
  role_arn : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
  destinations : destinations list;
  input_devices : input_devices list;
  media_connect_flows : media_connect_flows list;
  sources : sources list;
  timeouts : timeouts option;
  vpc : vpc list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_medialive_input) -> ()

let yojson_of_aws_medialive_input =
  (function
   | {
       id = v_id;
       input_security_groups = v_input_security_groups;
       name = v_name;
       role_arn = v_role_arn;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       destinations = v_destinations;
       input_devices = v_input_devices;
       media_connect_flows = v_media_connect_flows;
       sources = v_sources;
       timeouts = v_timeouts;
       vpc = v_vpc;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_vpc v_vpc in
         ("vpc", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_sources v_sources in
         ("sources", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_media_connect_flows
             v_media_connect_flows
         in
         ("media_connect_flows", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_input_devices v_input_devices
         in
         ("input_devices", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_destinations v_destinations
         in
         ("destinations", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_input_security_groups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "input_security_groups", arg in
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
    : aws_medialive_input -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_medialive_input

[@@@deriving.end]

let destinations ~stream_name () : destinations = { stream_name }
let input_devices ~id () : input_devices = { id }

let media_connect_flows ~flow_arn () : media_connect_flows =
  { flow_arn }

let sources ~password_param ~url ~username () : sources =
  { password_param; url; username }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc ?security_group_ids ~subnet_ids () : vpc =
  { security_group_ids; subnet_ids }

let aws_medialive_input ?id ?input_security_groups ?role_arn ?tags
    ?tags_all ?timeouts ?(vpc = []) ~name ~type_ ~destinations
    ~input_devices ~media_connect_flows ~sources () :
    aws_medialive_input =
  {
    id;
    input_security_groups;
    name;
    role_arn;
    tags;
    tags_all;
    type_;
    destinations;
    input_devices;
    media_connect_flows;
    sources;
    timeouts;
    vpc;
  }

type t = {
  arn : string prop;
  attached_channels : string list prop;
  id : string prop;
  input_class : string prop;
  input_partner_ids : string list prop;
  input_security_groups : string list prop;
  input_source_type : string prop;
  name : string prop;
  role_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?id ?input_security_groups ?role_arn ?tags ?tags_all
    ?timeouts ?(vpc = []) ~name ~type_ ~destinations ~input_devices
    ~media_connect_flows ~sources __id =
  let __type = "aws_medialive_input" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       attached_channels =
         Prop.computed __type __id "attached_channels";
       id = Prop.computed __type __id "id";
       input_class = Prop.computed __type __id "input_class";
       input_partner_ids =
         Prop.computed __type __id "input_partner_ids";
       input_security_groups =
         Prop.computed __type __id "input_security_groups";
       input_source_type =
         Prop.computed __type __id "input_source_type";
       name = Prop.computed __type __id "name";
       role_arn = Prop.computed __type __id "role_arn";
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
      yojson_of_aws_medialive_input
        (aws_medialive_input ?id ?input_security_groups ?role_arn
           ?tags ?tags_all ?timeouts ~vpc ~name ~type_ ~destinations
           ~input_devices ~media_connect_flows ~sources ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?input_security_groups ?role_arn ?tags
    ?tags_all ?timeouts ?(vpc = []) ~name ~type_ ~destinations
    ~input_devices ~media_connect_flows ~sources __id =
  let (r : _ Tf_core.resource) =
    make ?id ?input_security_groups ?role_arn ?tags ?tags_all
      ?timeouts ~vpc ~name ~type_ ~destinations ~input_devices
      ~media_connect_flows ~sources __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
