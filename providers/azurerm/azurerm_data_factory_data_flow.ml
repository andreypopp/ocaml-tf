(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sink__dataset = {
  name : string prop;
  parameters : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sink__dataset) -> ()

let yojson_of_sink__dataset =
  (function
   | { name = v_name; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : sink__dataset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sink__dataset

[@@@deriving.end]

type sink__flowlet = {
  dataset_parameters : string prop option; [@option]
  name : string prop;
  parameters : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sink__flowlet) -> ()

let yojson_of_sink__flowlet =
  (function
   | {
       dataset_parameters = v_dataset_parameters;
       name = v_name;
       parameters = v_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_dataset_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataset_parameters", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sink__flowlet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sink__flowlet

[@@@deriving.end]

type sink__linked_service = {
  name : string prop;
  parameters : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sink__linked_service) -> ()

let yojson_of_sink__linked_service =
  (function
   | { name = v_name; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : sink__linked_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sink__linked_service

[@@@deriving.end]

type sink__rejected_linked_service = {
  name : string prop;
  parameters : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sink__rejected_linked_service) -> ()

let yojson_of_sink__rejected_linked_service =
  (function
   | { name = v_name; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : sink__rejected_linked_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sink__rejected_linked_service

[@@@deriving.end]

type sink__schema_linked_service = {
  name : string prop;
  parameters : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sink__schema_linked_service) -> ()

let yojson_of_sink__schema_linked_service =
  (function
   | { name = v_name; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : sink__schema_linked_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sink__schema_linked_service

[@@@deriving.end]

type sink = {
  description : string prop option; [@option]
  name : string prop;
  dataset : sink__dataset list;
  flowlet : sink__flowlet list;
  linked_service : sink__linked_service list;
  rejected_linked_service : sink__rejected_linked_service list;
  schema_linked_service : sink__schema_linked_service list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sink) -> ()

let yojson_of_sink =
  (function
   | {
       description = v_description;
       name = v_name;
       dataset = v_dataset;
       flowlet = v_flowlet;
       linked_service = v_linked_service;
       rejected_linked_service = v_rejected_linked_service;
       schema_linked_service = v_schema_linked_service;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_sink__schema_linked_service
             v_schema_linked_service
         in
         ("schema_linked_service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_sink__rejected_linked_service
             v_rejected_linked_service
         in
         ("rejected_linked_service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_sink__linked_service
             v_linked_service
         in
         ("linked_service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_sink__flowlet v_flowlet
         in
         ("flowlet", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_sink__dataset v_dataset
         in
         ("dataset", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : sink -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sink

[@@@deriving.end]

type source__dataset = {
  name : string prop;
  parameters : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__dataset) -> ()

let yojson_of_source__dataset =
  (function
   | { name = v_name; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : source__dataset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__dataset

[@@@deriving.end]

type source__flowlet = {
  dataset_parameters : string prop option; [@option]
  name : string prop;
  parameters : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__flowlet) -> ()

let yojson_of_source__flowlet =
  (function
   | {
       dataset_parameters = v_dataset_parameters;
       name = v_name;
       parameters = v_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_dataset_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataset_parameters", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : source__flowlet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__flowlet

[@@@deriving.end]

type source__linked_service = {
  name : string prop;
  parameters : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__linked_service) -> ()

let yojson_of_source__linked_service =
  (function
   | { name = v_name; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : source__linked_service -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__linked_service

[@@@deriving.end]

type source__rejected_linked_service = {
  name : string prop;
  parameters : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__rejected_linked_service) -> ()

let yojson_of_source__rejected_linked_service =
  (function
   | { name = v_name; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : source__rejected_linked_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__rejected_linked_service

[@@@deriving.end]

type source__schema_linked_service = {
  name : string prop;
  parameters : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__schema_linked_service) -> ()

let yojson_of_source__schema_linked_service =
  (function
   | { name = v_name; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : source__schema_linked_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__schema_linked_service

[@@@deriving.end]

type source = {
  description : string prop option; [@option]
  name : string prop;
  dataset : source__dataset list;
  flowlet : source__flowlet list;
  linked_service : source__linked_service list;
  rejected_linked_service : source__rejected_linked_service list;
  schema_linked_service : source__schema_linked_service list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source) -> ()

let yojson_of_source =
  (function
   | {
       description = v_description;
       name = v_name;
       dataset = v_dataset;
       flowlet = v_flowlet;
       linked_service = v_linked_service;
       rejected_linked_service = v_rejected_linked_service;
       schema_linked_service = v_schema_linked_service;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_source__schema_linked_service
             v_schema_linked_service
         in
         ("schema_linked_service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_source__rejected_linked_service
             v_rejected_linked_service
         in
         ("rejected_linked_service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_source__linked_service
             v_linked_service
         in
         ("linked_service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_source__flowlet v_flowlet
         in
         ("flowlet", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_source__dataset v_dataset
         in
         ("dataset", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source

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

type transformation__dataset = {
  name : string prop;
  parameters : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : transformation__dataset) -> ()

let yojson_of_transformation__dataset =
  (function
   | { name = v_name; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : transformation__dataset -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transformation__dataset

[@@@deriving.end]

type transformation__flowlet = {
  dataset_parameters : string prop option; [@option]
  name : string prop;
  parameters : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : transformation__flowlet) -> ()

let yojson_of_transformation__flowlet =
  (function
   | {
       dataset_parameters = v_dataset_parameters;
       name = v_name;
       parameters = v_parameters;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_dataset_parameters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "dataset_parameters", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : transformation__flowlet -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transformation__flowlet

[@@@deriving.end]

type transformation__linked_service = {
  name : string prop;
  parameters : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : transformation__linked_service) -> ()

let yojson_of_transformation__linked_service =
  (function
   | { name = v_name; parameters = v_parameters } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_parameters with
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
             let bnd = "parameters", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : transformation__linked_service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transformation__linked_service

[@@@deriving.end]

type transformation = {
  description : string prop option; [@option]
  name : string prop;
  dataset : transformation__dataset list;
  flowlet : transformation__flowlet list;
  linked_service : transformation__linked_service list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : transformation) -> ()

let yojson_of_transformation =
  (function
   | {
       description = v_description;
       name = v_name;
       dataset = v_dataset;
       flowlet = v_flowlet;
       linked_service = v_linked_service;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_transformation__linked_service
             v_linked_service
         in
         ("linked_service", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_transformation__flowlet v_flowlet
         in
         ("flowlet", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_transformation__dataset v_dataset
         in
         ("dataset", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : transformation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_transformation

[@@@deriving.end]

type azurerm_data_factory_data_flow = {
  annotations : string prop list option; [@option]
  data_factory_id : string prop;
  description : string prop option; [@option]
  folder : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  script : string prop option; [@option]
  script_lines : string prop list option; [@option]
  sink : sink list;
  source : source list;
  timeouts : timeouts option;
  transformation : transformation list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_data_factory_data_flow) -> ()

let yojson_of_azurerm_data_factory_data_flow =
  (function
   | {
       annotations = v_annotations;
       data_factory_id = v_data_factory_id;
       description = v_description;
       folder = v_folder;
       id = v_id;
       name = v_name;
       script = v_script;
       script_lines = v_script_lines;
       sink = v_sink;
       source = v_source;
       timeouts = v_timeouts;
       transformation = v_transformation;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_transformation v_transformation
         in
         ("transformation", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_source v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_sink v_sink in
         ("sink", arg) :: bnds
       in
       let bnds =
         match v_script_lines with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "script_lines", arg in
             bnd :: bnds
       in
       let bnds =
         match v_script with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "script", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_folder with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "folder", arg in
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_factory_id
         in
         ("data_factory_id", arg) :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_data_factory_data_flow ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_data_factory_data_flow

[@@@deriving.end]

let sink__dataset ?parameters ~name () : sink__dataset =
  { name; parameters }

let sink__flowlet ?dataset_parameters ?parameters ~name () :
    sink__flowlet =
  { dataset_parameters; name; parameters }

let sink__linked_service ?parameters ~name () : sink__linked_service
    =
  { name; parameters }

let sink__rejected_linked_service ?parameters ~name () :
    sink__rejected_linked_service =
  { name; parameters }

let sink__schema_linked_service ?parameters ~name () :
    sink__schema_linked_service =
  { name; parameters }

let sink ?description ?(dataset = []) ?(flowlet = [])
    ?(linked_service = []) ?(rejected_linked_service = [])
    ?(schema_linked_service = []) ~name () : sink =
  {
    description;
    name;
    dataset;
    flowlet;
    linked_service;
    rejected_linked_service;
    schema_linked_service;
  }

let source__dataset ?parameters ~name () : source__dataset =
  { name; parameters }

let source__flowlet ?dataset_parameters ?parameters ~name () :
    source__flowlet =
  { dataset_parameters; name; parameters }

let source__linked_service ?parameters ~name () :
    source__linked_service =
  { name; parameters }

let source__rejected_linked_service ?parameters ~name () :
    source__rejected_linked_service =
  { name; parameters }

let source__schema_linked_service ?parameters ~name () :
    source__schema_linked_service =
  { name; parameters }

let source ?description ?(dataset = []) ?(flowlet = [])
    ?(linked_service = []) ?(rejected_linked_service = [])
    ?(schema_linked_service = []) ~name () : source =
  {
    description;
    name;
    dataset;
    flowlet;
    linked_service;
    rejected_linked_service;
    schema_linked_service;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let transformation__dataset ?parameters ~name () :
    transformation__dataset =
  { name; parameters }

let transformation__flowlet ?dataset_parameters ?parameters ~name ()
    : transformation__flowlet =
  { dataset_parameters; name; parameters }

let transformation__linked_service ?parameters ~name () :
    transformation__linked_service =
  { name; parameters }

let transformation ?description ?(dataset = []) ?(flowlet = [])
    ?(linked_service = []) ~name () : transformation =
  { description; name; dataset; flowlet; linked_service }

let azurerm_data_factory_data_flow ?annotations ?description ?folder
    ?id ?script ?script_lines ?timeouts ?(transformation = [])
    ~data_factory_id ~name ~sink ~source () :
    azurerm_data_factory_data_flow =
  {
    annotations;
    data_factory_id;
    description;
    folder;
    id;
    name;
    script;
    script_lines;
    sink;
    source;
    timeouts;
    transformation;
  }

type t = {
  tf_name : string;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  name : string prop;
  script : string prop;
  script_lines : string list prop;
}

let make ?annotations ?description ?folder ?id ?script ?script_lines
    ?timeouts ?(transformation = []) ~data_factory_id ~name ~sink
    ~source __id =
  let __type = "azurerm_data_factory_data_flow" in
  let __attrs =
    ({
       tf_name = __id;
       annotations = Prop.computed __type __id "annotations";
       data_factory_id = Prop.computed __type __id "data_factory_id";
       description = Prop.computed __type __id "description";
       folder = Prop.computed __type __id "folder";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       script = Prop.computed __type __id "script";
       script_lines = Prop.computed __type __id "script_lines";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_data_factory_data_flow
        (azurerm_data_factory_data_flow ?annotations ?description
           ?folder ?id ?script ?script_lines ?timeouts
           ~transformation ~data_factory_id ~name ~sink ~source ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?description ?folder ?id ?script
    ?script_lines ?timeouts ?(transformation = []) ~data_factory_id
    ~name ~sink ~source __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?description ?folder ?id ?script ?script_lines
      ?timeouts ~transformation ~data_factory_id ~name ~sink ~source
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
