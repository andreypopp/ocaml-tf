(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type single_network_slice_selection_assistance_information = {
  slice_differentiator : string prop option; [@option]
  slice_service_type : float prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : single_network_slice_selection_assistance_information) ->
  ()

let yojson_of_single_network_slice_selection_assistance_information =
  (function
   | {
       slice_differentiator = v_slice_differentiator;
       slice_service_type = v_slice_service_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_slice_service_type
         in
         ("slice_service_type", arg) :: bnds
       in
       let bnds =
         match v_slice_differentiator with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "slice_differentiator", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : single_network_slice_selection_assistance_information ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_single_network_slice_selection_assistance_information

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type azurerm_mobile_network_slice = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  single_network_slice_selection_assistance_information :
    single_network_slice_selection_assistance_information list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mobile_network_slice) -> ()

let yojson_of_azurerm_mobile_network_slice =
  (function
   | {
       description = v_description;
       id = v_id;
       location = v_location;
       mobile_network_id = v_mobile_network_id;
       name = v_name;
       tags = v_tags;
       single_network_slice_selection_assistance_information =
         v_single_network_slice_selection_assistance_information;
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
         let arg =
           yojson_of_list
             yojson_of_single_network_slice_selection_assistance_information
             v_single_network_slice_selection_assistance_information
         in
         ( "single_network_slice_selection_assistance_information",
           arg )
         :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_mobile_network_id
         in
         ("mobile_network_id", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mobile_network_slice ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mobile_network_slice

[@@@deriving.end]

let single_network_slice_selection_assistance_information
    ?slice_differentiator ~slice_service_type () :
    single_network_slice_selection_assistance_information =
  { slice_differentiator; slice_service_type }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mobile_network_slice ?description ?id ?tags ?timeouts
    ~location ~mobile_network_id ~name
    ~single_network_slice_selection_assistance_information () :
    azurerm_mobile_network_slice =
  {
    description;
    id;
    location;
    mobile_network_id;
    name;
    tags;
    single_network_slice_selection_assistance_information;
    timeouts;
  }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  location : string prop;
  mobile_network_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let make ?description ?id ?tags ?timeouts ~location
    ~mobile_network_id ~name
    ~single_network_slice_selection_assistance_information __id =
  let __type = "azurerm_mobile_network_slice" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       mobile_network_id =
         Prop.computed __type __id "mobile_network_id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mobile_network_slice
        (azurerm_mobile_network_slice ?description ?id ?tags
           ?timeouts ~location ~mobile_network_id ~name
           ~single_network_slice_selection_assistance_information ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?timeouts ~location
    ~mobile_network_id ~name
    ~single_network_slice_selection_assistance_information __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?timeouts ~location
      ~mobile_network_id ~name
      ~single_network_slice_selection_assistance_information __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
