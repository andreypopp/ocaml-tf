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

type aws_eip = {
  id : string prop option; [@option]
  public_ip : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  filter : filter list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_eip) -> ()

let yojson_of_aws_eip =
  (function
   | {
       id = v_id;
       public_ip = v_public_ip;
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
         match v_public_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "public_ip", arg in
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
    : aws_eip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_eip

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_eip ?id ?public_ip ?tags ?timeouts ~filter () : aws_eip =
  { id; public_ip; tags; filter; timeouts }

type t = {
  tf_name : string;
  association_id : string prop;
  carrier_ip : string prop;
  customer_owned_ip : string prop;
  customer_owned_ipv4_pool : string prop;
  domain : string prop;
  id : string prop;
  instance_id : string prop;
  network_interface_id : string prop;
  network_interface_owner_id : string prop;
  private_dns : string prop;
  private_ip : string prop;
  public_dns : string prop;
  public_ip : string prop;
  public_ipv4_pool : string prop;
  tags : (string * string) list prop;
}

let make ?id ?public_ip ?tags ?timeouts ~filter __id =
  let __type = "aws_eip" in
  let __attrs =
    ({
       tf_name = __id;
       association_id = Prop.computed __type __id "association_id";
       carrier_ip = Prop.computed __type __id "carrier_ip";
       customer_owned_ip =
         Prop.computed __type __id "customer_owned_ip";
       customer_owned_ipv4_pool =
         Prop.computed __type __id "customer_owned_ipv4_pool";
       domain = Prop.computed __type __id "domain";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       network_interface_id =
         Prop.computed __type __id "network_interface_id";
       network_interface_owner_id =
         Prop.computed __type __id "network_interface_owner_id";
       private_dns = Prop.computed __type __id "private_dns";
       private_ip = Prop.computed __type __id "private_ip";
       public_dns = Prop.computed __type __id "public_dns";
       public_ip = Prop.computed __type __id "public_ip";
       public_ipv4_pool =
         Prop.computed __type __id "public_ipv4_pool";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_eip
        (aws_eip ?id ?public_ip ?tags ?timeouts ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?public_ip ?tags ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ?public_ip ?tags ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
