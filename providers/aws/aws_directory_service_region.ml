(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type vpc_settings = {
  subnet_ids : string prop list;
  vpc_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_settings) -> ()

let yojson_of_vpc_settings =
  (function
   | { subnet_ids = v_subnet_ids; vpc_id = v_vpc_id } ->
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
       `Assoc bnds
    : vpc_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_settings

[@@@deriving.end]

type aws_directory_service_region = {
  desired_number_of_domain_controllers : float prop option; [@option]
  directory_id : string prop;
  id : string prop option; [@option]
  region_name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
  vpc_settings : vpc_settings list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_directory_service_region) -> ()

let yojson_of_aws_directory_service_region =
  (function
   | {
       desired_number_of_domain_controllers =
         v_desired_number_of_domain_controllers;
       directory_id = v_directory_id;
       id = v_id;
       region_name = v_region_name;
       tags = v_tags;
       tags_all = v_tags_all;
       timeouts = v_timeouts;
       vpc_settings = v_vpc_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vpc_settings v_vpc_settings
         in
         ("vpc_settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_region_name in
         ("region_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_directory_id in
         ("directory_id", arg) :: bnds
       in
       let bnds =
         match v_desired_number_of_domain_controllers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "desired_number_of_domain_controllers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_directory_service_region ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_directory_service_region

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_settings ~subnet_ids ~vpc_id () : vpc_settings =
  { subnet_ids; vpc_id }

let aws_directory_service_region
    ?desired_number_of_domain_controllers ?id ?tags ?tags_all
    ?timeouts ~directory_id ~region_name ~vpc_settings () :
    aws_directory_service_region =
  {
    desired_number_of_domain_controllers;
    directory_id;
    id;
    region_name;
    tags;
    tags_all;
    timeouts;
    vpc_settings;
  }

type t = {
  desired_number_of_domain_controllers : float prop;
  directory_id : string prop;
  id : string prop;
  region_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?desired_number_of_domain_controllers ?id ?tags ?tags_all
    ?timeouts ~directory_id ~region_name ~vpc_settings __id =
  let __type = "aws_directory_service_region" in
  let __attrs =
    ({
       desired_number_of_domain_controllers =
         Prop.computed __type __id
           "desired_number_of_domain_controllers";
       directory_id = Prop.computed __type __id "directory_id";
       id = Prop.computed __type __id "id";
       region_name = Prop.computed __type __id "region_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_directory_service_region
        (aws_directory_service_region
           ?desired_number_of_domain_controllers ?id ?tags ?tags_all
           ?timeouts ~directory_id ~region_name ~vpc_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?desired_number_of_domain_controllers ?id
    ?tags ?tags_all ?timeouts ~directory_id ~region_name
    ~vpc_settings __id =
  let (r : _ Tf_core.resource) =
    make ?desired_number_of_domain_controllers ?id ?tags ?tags_all
      ?timeouts ~directory_id ~region_name ~vpc_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
