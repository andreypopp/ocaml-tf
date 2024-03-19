(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_athena_prepared_statement = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  query_statement : string prop;  (** query_statement *)
  workgroup : string prop;  (** workgroup *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_athena_prepared_statement *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_athena_prepared_statement ?description ?id ?timeouts ~name
    ~query_statement ~workgroup () : aws_athena_prepared_statement =
  { description; id; name; query_statement; workgroup; timeouts }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  query_statement : string prop;
  workgroup : string prop;
}

let register ?tf_module ?description ?id ?timeouts ~name
    ~query_statement ~workgroup __resource_id =
  let __resource_type = "aws_athena_prepared_statement" in
  let __resource =
    aws_athena_prepared_statement ?description ?id ?timeouts ~name
      ~query_statement ~workgroup ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_athena_prepared_statement __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       query_statement =
         Prop.computed __resource_type __resource_id
           "query_statement";
       workgroup =
         Prop.computed __resource_type __resource_id "workgroup";
     }
      : t)
  in
  __resource_attributes
