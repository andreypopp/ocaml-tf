(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = { name : string prop; values : string prop list }
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_values
         in
         ("values", arg) :: bnds
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

type aws_instances = {
  id : string prop option; [@option]
  instance_state_names : string prop list option; [@option]
  instance_tags : (string * string prop) list option; [@option]
  filter : filter list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_instances) -> ()

let yojson_of_aws_instances =
  (function
   | {
       id = v_id;
       instance_state_names = v_instance_state_names;
       instance_tags = v_instance_tags;
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
         let arg = yojson_of_list yojson_of_filter v_filter in
         ("filter", arg) :: bnds
       in
       let bnds =
         match v_instance_tags with
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
             let bnd = "instance_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_instance_state_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "instance_state_names", arg in
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
    : aws_instances -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_instances

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_instances ?id ?instance_state_names ?instance_tags ?timeouts
    ~filter () : aws_instances =
  { id; instance_state_names; instance_tags; filter; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  ids : string list prop;
  instance_state_names : string list prop;
  instance_tags : (string * string) list prop;
  ipv6_addresses : string list prop;
  private_ips : string list prop;
  public_ips : string list prop;
}

let make ?id ?instance_state_names ?instance_tags ?timeouts ~filter
    __id =
  let __type = "aws_instances" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       ids = Prop.computed __type __id "ids";
       instance_state_names =
         Prop.computed __type __id "instance_state_names";
       instance_tags = Prop.computed __type __id "instance_tags";
       ipv6_addresses = Prop.computed __type __id "ipv6_addresses";
       private_ips = Prop.computed __type __id "private_ips";
       public_ips = Prop.computed __type __id "public_ips";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_instances
        (aws_instances ?id ?instance_state_names ?instance_tags
           ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?instance_state_names ?instance_tags
    ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?instance_state_names ?instance_tags ?timeouts ~filter
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
