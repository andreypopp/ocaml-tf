(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hierarchy_structure__level_five = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** hierarchy_structure__level_five *)

type hierarchy_structure__level_four = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** hierarchy_structure__level_four *)

type hierarchy_structure__level_one = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** hierarchy_structure__level_one *)

type hierarchy_structure__level_three = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** hierarchy_structure__level_three *)

type hierarchy_structure__level_two = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** hierarchy_structure__level_two *)

type hierarchy_structure = {
  level_five : hierarchy_structure__level_five list;
  level_four : hierarchy_structure__level_four list;
  level_one : hierarchy_structure__level_one list;
  level_three : hierarchy_structure__level_three list;
  level_two : hierarchy_structure__level_two list;
}
[@@deriving yojson_of]
(** hierarchy_structure *)

type aws_connect_user_hierarchy_structure = {
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  hierarchy_structure : hierarchy_structure list;
}
[@@deriving yojson_of]
(** aws_connect_user_hierarchy_structure *)

let hierarchy_structure__level_five ~name () :
    hierarchy_structure__level_five =
  { name }

let hierarchy_structure__level_four ~name () :
    hierarchy_structure__level_four =
  { name }

let hierarchy_structure__level_one ~name () :
    hierarchy_structure__level_one =
  { name }

let hierarchy_structure__level_three ~name () :
    hierarchy_structure__level_three =
  { name }

let hierarchy_structure__level_two ~name () :
    hierarchy_structure__level_two =
  { name }

let hierarchy_structure ~level_five ~level_four ~level_one
    ~level_three ~level_two () : hierarchy_structure =
  { level_five; level_four; level_one; level_three; level_two }

let aws_connect_user_hierarchy_structure ?id ~instance_id
    ~hierarchy_structure () : aws_connect_user_hierarchy_structure =
  { id; instance_id; hierarchy_structure }

type t = { id : string prop; instance_id : string prop }

let register ?tf_module ?id ~instance_id ~hierarchy_structure
    __resource_id =
  let __resource_type = "aws_connect_user_hierarchy_structure" in
  let __resource =
    aws_connect_user_hierarchy_structure ?id ~instance_id
      ~hierarchy_structure ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_user_hierarchy_structure __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       instance_id =
         Prop.computed __resource_type __resource_id "instance_id";
     }
      : t)
  in
  __resource_attributes
