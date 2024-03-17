(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_data_factory_data_flow__sink__dataset = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow__sink__dataset *)

type azurerm_data_factory_data_flow__sink__flowlet = {
  dataset_parameters : string prop option; [@option]
      (** dataset_parameters *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow__sink__flowlet *)

type azurerm_data_factory_data_flow__sink__linked_service = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow__sink__linked_service *)

type azurerm_data_factory_data_flow__sink__rejected_linked_service = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow__sink__rejected_linked_service *)

type azurerm_data_factory_data_flow__sink__schema_linked_service = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow__sink__schema_linked_service *)

type azurerm_data_factory_data_flow__sink = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  dataset : azurerm_data_factory_data_flow__sink__dataset list;
  flowlet : azurerm_data_factory_data_flow__sink__flowlet list;
  linked_service :
    azurerm_data_factory_data_flow__sink__linked_service list;
  rejected_linked_service :
    azurerm_data_factory_data_flow__sink__rejected_linked_service
    list;
  schema_linked_service :
    azurerm_data_factory_data_flow__sink__schema_linked_service list;
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow__sink *)

type azurerm_data_factory_data_flow__source__dataset = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow__source__dataset *)

type azurerm_data_factory_data_flow__source__flowlet = {
  dataset_parameters : string prop option; [@option]
      (** dataset_parameters *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow__source__flowlet *)

type azurerm_data_factory_data_flow__source__linked_service = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow__source__linked_service *)

type azurerm_data_factory_data_flow__source__rejected_linked_service = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow__source__rejected_linked_service *)

type azurerm_data_factory_data_flow__source__schema_linked_service = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow__source__schema_linked_service *)

type azurerm_data_factory_data_flow__source = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  dataset : azurerm_data_factory_data_flow__source__dataset list;
  flowlet : azurerm_data_factory_data_flow__source__flowlet list;
  linked_service :
    azurerm_data_factory_data_flow__source__linked_service list;
  rejected_linked_service :
    azurerm_data_factory_data_flow__source__rejected_linked_service
    list;
  schema_linked_service :
    azurerm_data_factory_data_flow__source__schema_linked_service
    list;
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow__source *)

type azurerm_data_factory_data_flow__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow__timeouts *)

type azurerm_data_factory_data_flow__transformation__dataset = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow__transformation__dataset *)

type azurerm_data_factory_data_flow__transformation__flowlet = {
  dataset_parameters : string prop option; [@option]
      (** dataset_parameters *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow__transformation__flowlet *)

type azurerm_data_factory_data_flow__transformation__linked_service = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow__transformation__linked_service *)

type azurerm_data_factory_data_flow__transformation = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  dataset :
    azurerm_data_factory_data_flow__transformation__dataset list;
  flowlet :
    azurerm_data_factory_data_flow__transformation__flowlet list;
  linked_service :
    azurerm_data_factory_data_flow__transformation__linked_service
    list;
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow__transformation *)

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
  sink : azurerm_data_factory_data_flow__sink list;
  source : azurerm_data_factory_data_flow__source list;
  timeouts : azurerm_data_factory_data_flow__timeouts option;
  transformation :
    azurerm_data_factory_data_flow__transformation list;
}
[@@deriving yojson_of]
(** azurerm_data_factory_data_flow *)

let azurerm_data_factory_data_flow ?annotations ?description ?folder
    ?id ?script ?script_lines ?timeouts ~data_factory_id ~name ~sink
    ~source ~transformation __resource_id =
  let __resource_type = "azurerm_data_factory_data_flow" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_data_flow __resource);
  ()
