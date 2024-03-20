(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type thing_group_indexing_configuration__custom_field = {
  name : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : thing_group_indexing_configuration__custom_field) -> ()

let yojson_of_thing_group_indexing_configuration__custom_field =
  (function
   | { name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : thing_group_indexing_configuration__custom_field ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_thing_group_indexing_configuration__custom_field

[@@@deriving.end]

type thing_group_indexing_configuration__managed_field = {
  name : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : thing_group_indexing_configuration__managed_field) -> ()

let yojson_of_thing_group_indexing_configuration__managed_field =
  (function
   | { name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : thing_group_indexing_configuration__managed_field ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_thing_group_indexing_configuration__managed_field

[@@@deriving.end]

type thing_group_indexing_configuration = {
  thing_group_indexing_mode : string prop;
  custom_field :
    thing_group_indexing_configuration__custom_field list;
  managed_field :
    thing_group_indexing_configuration__managed_field list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : thing_group_indexing_configuration) -> ()

let yojson_of_thing_group_indexing_configuration =
  (function
   | {
       thing_group_indexing_mode = v_thing_group_indexing_mode;
       custom_field = v_custom_field;
       managed_field = v_managed_field;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_thing_group_indexing_configuration__managed_field
             v_managed_field
         in
         ("managed_field", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_thing_group_indexing_configuration__custom_field
             v_custom_field
         in
         ("custom_field", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_thing_group_indexing_mode
         in
         ("thing_group_indexing_mode", arg) :: bnds
       in
       `Assoc bnds
    : thing_group_indexing_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_thing_group_indexing_configuration

[@@@deriving.end]

type thing_indexing_configuration__custom_field = {
  name : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : thing_indexing_configuration__custom_field) -> ()

let yojson_of_thing_indexing_configuration__custom_field =
  (function
   | { name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : thing_indexing_configuration__custom_field ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_thing_indexing_configuration__custom_field

[@@@deriving.end]

type thing_indexing_configuration__filter = {
  named_shadow_names : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : thing_indexing_configuration__filter) -> ()

let yojson_of_thing_indexing_configuration__filter =
  (function
   | { named_shadow_names = v_named_shadow_names } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_named_shadow_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "named_shadow_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : thing_indexing_configuration__filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_thing_indexing_configuration__filter

[@@@deriving.end]

type thing_indexing_configuration__managed_field = {
  name : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : thing_indexing_configuration__managed_field) -> ()

let yojson_of_thing_indexing_configuration__managed_field =
  (function
   | { name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : thing_indexing_configuration__managed_field ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_thing_indexing_configuration__managed_field

[@@@deriving.end]

type thing_indexing_configuration = {
  device_defender_indexing_mode : string prop option; [@option]
  named_shadow_indexing_mode : string prop option; [@option]
  thing_connectivity_indexing_mode : string prop option; [@option]
  thing_indexing_mode : string prop;
  custom_field : thing_indexing_configuration__custom_field list;
  filter : thing_indexing_configuration__filter list;
  managed_field : thing_indexing_configuration__managed_field list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : thing_indexing_configuration) -> ()

let yojson_of_thing_indexing_configuration =
  (function
   | {
       device_defender_indexing_mode =
         v_device_defender_indexing_mode;
       named_shadow_indexing_mode = v_named_shadow_indexing_mode;
       thing_connectivity_indexing_mode =
         v_thing_connectivity_indexing_mode;
       thing_indexing_mode = v_thing_indexing_mode;
       custom_field = v_custom_field;
       filter = v_filter;
       managed_field = v_managed_field;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_thing_indexing_configuration__managed_field
             v_managed_field
         in
         ("managed_field", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_thing_indexing_configuration__filter v_filter
         in
         ("filter", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_thing_indexing_configuration__custom_field
             v_custom_field
         in
         ("custom_field", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_thing_indexing_mode
         in
         ("thing_indexing_mode", arg) :: bnds
       in
       let bnds =
         match v_thing_connectivity_indexing_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "thing_connectivity_indexing_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_named_shadow_indexing_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "named_shadow_indexing_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_defender_indexing_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_defender_indexing_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : thing_indexing_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_thing_indexing_configuration

[@@@deriving.end]

type aws_iot_indexing_configuration = {
  id : string prop option; [@option]
  thing_group_indexing_configuration :
    thing_group_indexing_configuration list;
  thing_indexing_configuration : thing_indexing_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_indexing_configuration) -> ()

let yojson_of_aws_iot_indexing_configuration =
  (function
   | {
       id = v_id;
       thing_group_indexing_configuration =
         v_thing_group_indexing_configuration;
       thing_indexing_configuration = v_thing_indexing_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_thing_indexing_configuration
             v_thing_indexing_configuration
         in
         ("thing_indexing_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_thing_group_indexing_configuration
             v_thing_group_indexing_configuration
         in
         ("thing_group_indexing_configuration", arg) :: bnds
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
    : aws_iot_indexing_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_indexing_configuration

[@@@deriving.end]

let thing_group_indexing_configuration__custom_field ?name ?type_ ()
    : thing_group_indexing_configuration__custom_field =
  { name; type_ }

let thing_group_indexing_configuration__managed_field ?name ?type_ ()
    : thing_group_indexing_configuration__managed_field =
  { name; type_ }

let thing_group_indexing_configuration ~thing_group_indexing_mode
    ~custom_field ~managed_field () :
    thing_group_indexing_configuration =
  { thing_group_indexing_mode; custom_field; managed_field }

let thing_indexing_configuration__custom_field ?name ?type_ () :
    thing_indexing_configuration__custom_field =
  { name; type_ }

let thing_indexing_configuration__filter ?named_shadow_names () :
    thing_indexing_configuration__filter =
  { named_shadow_names }

let thing_indexing_configuration__managed_field ?name ?type_ () :
    thing_indexing_configuration__managed_field =
  { name; type_ }

let thing_indexing_configuration ?device_defender_indexing_mode
    ?named_shadow_indexing_mode ?thing_connectivity_indexing_mode
    ~thing_indexing_mode ~custom_field ~filter ~managed_field () :
    thing_indexing_configuration =
  {
    device_defender_indexing_mode;
    named_shadow_indexing_mode;
    thing_connectivity_indexing_mode;
    thing_indexing_mode;
    custom_field;
    filter;
    managed_field;
  }

let aws_iot_indexing_configuration ?id
    ~thing_group_indexing_configuration ~thing_indexing_configuration
    () : aws_iot_indexing_configuration =
  {
    id;
    thing_group_indexing_configuration;
    thing_indexing_configuration;
  }

type t = { id : string prop }

let make ?id ~thing_group_indexing_configuration
    ~thing_indexing_configuration __id =
  let __type = "aws_iot_indexing_configuration" in
  let __attrs = ({ id = Prop.computed __type __id "id" } : t) in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_indexing_configuration
        (aws_iot_indexing_configuration ?id
           ~thing_group_indexing_configuration
           ~thing_indexing_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~thing_group_indexing_configuration
    ~thing_indexing_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ~thing_group_indexing_configuration
      ~thing_indexing_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
