(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type router = {
  platform : string prop;
  router_type_identifier : string prop;
  software : string prop;
  vendor : string prop;
  xslt_template_name : string prop;
  xslt_template_name_for_mac_sec : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : router) -> ()

let yojson_of_router =
  (function
   | {
       platform = v_platform;
       router_type_identifier = v_router_type_identifier;
       software = v_software;
       vendor = v_vendor;
       xslt_template_name = v_xslt_template_name;
       xslt_template_name_for_mac_sec =
         v_xslt_template_name_for_mac_sec;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_xslt_template_name_for_mac_sec
         in
         ("xslt_template_name_for_mac_sec", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_xslt_template_name
         in
         ("xslt_template_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vendor in
         ("vendor", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_software in
         ("software", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_router_type_identifier
         in
         ("router_type_identifier", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_platform in
         ("platform", arg) :: bnds
       in
       `Assoc bnds
    : router -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_router

[@@@deriving.end]

type aws_dx_router_configuration = {
  id : string prop option; [@option]
  router_type_identifier : string prop;
  virtual_interface_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dx_router_configuration) -> ()

let yojson_of_aws_dx_router_configuration =
  (function
   | {
       id = v_id;
       router_type_identifier = v_router_type_identifier;
       virtual_interface_id = v_virtual_interface_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_interface_id
         in
         ("virtual_interface_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_router_type_identifier
         in
         ("router_type_identifier", arg) :: bnds
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
    : aws_dx_router_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dx_router_configuration

[@@@deriving.end]

let aws_dx_router_configuration ?id ~router_type_identifier
    ~virtual_interface_id () : aws_dx_router_configuration =
  { id; router_type_identifier; virtual_interface_id }

type t = {
  customer_router_config : string prop;
  id : string prop;
  router : router list prop;
  router_type_identifier : string prop;
  virtual_interface_id : string prop;
  virtual_interface_name : string prop;
}

let make ?id ~router_type_identifier ~virtual_interface_id __id =
  let __type = "aws_dx_router_configuration" in
  let __attrs =
    ({
       customer_router_config =
         Prop.computed __type __id "customer_router_config";
       id = Prop.computed __type __id "id";
       router = Prop.computed __type __id "router";
       router_type_identifier =
         Prop.computed __type __id "router_type_identifier";
       virtual_interface_id =
         Prop.computed __type __id "virtual_interface_id";
       virtual_interface_name =
         Prop.computed __type __id "virtual_interface_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_router_configuration
        (aws_dx_router_configuration ?id ~router_type_identifier
           ~virtual_interface_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~router_type_identifier
    ~virtual_interface_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~router_type_identifier ~virtual_interface_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
