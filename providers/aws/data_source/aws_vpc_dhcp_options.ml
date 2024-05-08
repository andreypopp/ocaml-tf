(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_vpc_dhcp_options = {
  dhcp_options_id : string prop option; [@option]
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  filter : filter list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_vpc_dhcp_options) -> ()

let yojson_of_aws_vpc_dhcp_options =
  (function
   | {
       dhcp_options_id = v_dhcp_options_id;
       id = v_id;
       tags = v_tags;
       filter = v_filter;
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
         if [] = v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dhcp_options_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dhcp_options_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_vpc_dhcp_options -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_vpc_dhcp_options

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_vpc_dhcp_options ?dhcp_options_id ?id ?tags ?timeouts ~filter
    () : aws_vpc_dhcp_options =
  { dhcp_options_id; id; tags; filter; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  dhcp_options_id : string prop;
  domain_name : string prop;
  domain_name_servers : string list prop;
  id : string prop;
  netbios_name_servers : string list prop;
  netbios_node_type : string prop;
  ntp_servers : string list prop;
  owner_id : string prop;
  tags : (string * string) list prop;
}

let make ?dhcp_options_id ?id ?tags ?timeouts ~filter __id =
  let __type = "aws_vpc_dhcp_options" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       dhcp_options_id = Prop.computed __type __id "dhcp_options_id";
       domain_name = Prop.computed __type __id "domain_name";
       domain_name_servers =
         Prop.computed __type __id "domain_name_servers";
       id = Prop.computed __type __id "id";
       netbios_name_servers =
         Prop.computed __type __id "netbios_name_servers";
       netbios_node_type =
         Prop.computed __type __id "netbios_node_type";
       ntp_servers = Prop.computed __type __id "ntp_servers";
       owner_id = Prop.computed __type __id "owner_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpc_dhcp_options
        (aws_vpc_dhcp_options ?dhcp_options_id ?id ?tags ?timeouts
           ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?dhcp_options_id ?id ?tags ?timeouts ~filter
    __id =
  let (r : _ Tf_core.resource) =
    make ?dhcp_options_id ?id ?tags ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
