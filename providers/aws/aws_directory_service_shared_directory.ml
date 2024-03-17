(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_directory_service_shared_directory__target = {
  id : string prop;  (** id *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_directory_service_shared_directory__target *)

type aws_directory_service_shared_directory__timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_directory_service_shared_directory__timeouts *)

type aws_directory_service_shared_directory = {
  directory_id : string prop;  (** directory_id *)
  id : string prop option; [@option]  (** id *)
  method_ : string prop option; [@option] [@key "method"]
      (** method *)
  notes : string prop option; [@option]  (** notes *)
  target : aws_directory_service_shared_directory__target list;
  timeouts : aws_directory_service_shared_directory__timeouts option;
}
[@@deriving yojson_of]
(** aws_directory_service_shared_directory *)

type t = {
  directory_id : string prop;
  id : string prop;
  method_ : string prop;
  notes : string prop;
  shared_directory_id : string prop;
}

let aws_directory_service_shared_directory ?id ?method_ ?notes
    ?timeouts ~directory_id ~target __resource_id =
  let __resource_type = "aws_directory_service_shared_directory" in
  let __resource =
    ({ directory_id; id; method_; notes; target; timeouts }
      : aws_directory_service_shared_directory)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_directory_service_shared_directory __resource);
  let __resource_attributes =
    ({
       directory_id =
         Prop.computed __resource_type __resource_id "directory_id";
       id = Prop.computed __resource_type __resource_id "id";
       method_ = Prop.computed __resource_type __resource_id "method";
       notes = Prop.computed __resource_type __resource_id "notes";
       shared_directory_id =
         Prop.computed __resource_type __resource_id
           "shared_directory_id";
     }
      : t)
  in
  __resource_attributes
