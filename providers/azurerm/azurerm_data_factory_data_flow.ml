(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type sink__dataset = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** sink__dataset *)

type sink__flowlet = {
  dataset_parameters : string prop option; [@option]
      (** dataset_parameters *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** sink__flowlet *)

type sink__linked_service = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** sink__linked_service *)

type sink__rejected_linked_service = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** sink__rejected_linked_service *)

type sink__schema_linked_service = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** sink__schema_linked_service *)

type sink = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  dataset : sink__dataset list;
  flowlet : sink__flowlet list;
  linked_service : sink__linked_service list;
  rejected_linked_service : sink__rejected_linked_service list;
  schema_linked_service : sink__schema_linked_service list;
}
[@@deriving yojson_of]
(** sink *)

type source__dataset = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** source__dataset *)

type source__flowlet = {
  dataset_parameters : string prop option; [@option]
      (** dataset_parameters *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** source__flowlet *)

type source__linked_service = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** source__linked_service *)

type source__rejected_linked_service = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** source__rejected_linked_service *)

type source__schema_linked_service = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** source__schema_linked_service *)

type source = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  dataset : source__dataset list;
  flowlet : source__flowlet list;
  linked_service : source__linked_service list;
  rejected_linked_service : source__rejected_linked_service list;
  schema_linked_service : source__schema_linked_service list;
}
[@@deriving yojson_of]
(** source *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type transformation__dataset = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** transformation__dataset *)

type transformation__flowlet = {
  dataset_parameters : string prop option; [@option]
      (** dataset_parameters *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** transformation__flowlet *)

type transformation__linked_service = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** transformation__linked_service *)

type transformation = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  dataset : transformation__dataset list;
  flowlet : transformation__flowlet list;
  linked_service : transformation__linked_service list;
}
[@@deriving yojson_of]
(** transformation *)

type azurerm_data_factory_data_flow = {
  annotations : string prop list option; [@option]
      (** annotations *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  folder : string prop option; [@option]  (** folder *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  script : string prop option; [@option]  (** script *)
  script_lines : string prop list option; [@option]
      (** script_lines *)
  sink : sink list;
  source : source list;
  timeouts : timeouts option;
  transformation : transformation list;
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow *)

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

let sink ?description ~name ~dataset ~flowlet ~linked_service
    ~rejected_linked_service ~schema_linked_service () : sink =
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

let source ?description ~name ~dataset ~flowlet ~linked_service
    ~rejected_linked_service ~schema_linked_service () : source =
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

let transformation ?description ~name ~dataset ~flowlet
    ~linked_service () : transformation =
  { description; name; dataset; flowlet; linked_service }

let azurerm_data_factory_data_flow ?annotations ?description ?folder
    ?id ?script ?script_lines ?timeouts ~data_factory_id ~name ~sink
    ~source ~transformation () : azurerm_data_factory_data_flow =
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
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  folder : string prop;
  id : string prop;
  name : string prop;
  script : string prop;
  script_lines : string list prop;
}

let register ?tf_module ?annotations ?description ?folder ?id ?script
    ?script_lines ?timeouts ~data_factory_id ~name ~sink ~source
    ~transformation __resource_id =
  let __resource_type = "azurerm_data_factory_data_flow" in
  let __resource =
    azurerm_data_factory_data_flow ?annotations ?description ?folder
      ?id ?script ?script_lines ?timeouts ~data_factory_id ~name
      ~sink ~source ~transformation ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_data_flow __resource);
  let __resource_attributes =
    ({
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       data_factory_id =
         Prop.computed __resource_type __resource_id
           "data_factory_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       folder = Prop.computed __resource_type __resource_id "folder";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       script = Prop.computed __resource_type __resource_id "script";
       script_lines =
         Prop.computed __resource_type __resource_id "script_lines";
     }
      : t)
  in
  __resource_attributes
