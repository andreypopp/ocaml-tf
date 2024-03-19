(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type target = {
  id : string prop;  (** id *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** target *)

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_directory_service_shared_directory = {
  directory_id : string prop;  (** directory_id *)
  id : string prop option; [@option]  (** id *)
  method_ : string prop option; [@option] [@key "method"]
      (** method *)
  notes : string prop option; [@option]  (** notes *)
  target : target list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_directory_service_shared_directory *)

let target ?type_ ~id () : target = { id; type_ }
let timeouts ?delete () : timeouts = { delete }

let aws_directory_service_shared_directory ?id ?method_ ?notes
    ?timeouts ~directory_id ~target () :
    aws_directory_service_shared_directory =
  { directory_id; id; method_; notes; target; timeouts }

type t = {
  directory_id : string prop;
  id : string prop;
  method_ : string prop;
  notes : string prop;
  shared_directory_id : string prop;
}

let register ?tf_module ?id ?method_ ?notes ?timeouts ~directory_id
    ~target __resource_id =
  let __resource_type = "aws_directory_service_shared_directory" in
  let __resource =
    aws_directory_service_shared_directory ?id ?method_ ?notes
      ?timeouts ~directory_id ~target ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
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
