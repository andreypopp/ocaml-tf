(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type control__input_parameter = {
  name : string prop option; [@option]  (** name *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** control__input_parameter *)

type control__scope = {
  compliance_resource_ids : string prop list option; [@option]
      (** compliance_resource_ids *)
  compliance_resource_types : string prop list option; [@option]
      (** compliance_resource_types *)
  tags : (string * string prop) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** control__scope *)

type control = {
  name : string prop;  (** name *)
  input_parameter : control__input_parameter list;
  scope : control__scope list;
}
[@@deriving yojson_of]
(** control *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_backup_framework = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  control : control list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_backup_framework *)

let control__input_parameter ?name ?value () :
    control__input_parameter =
  { name; value }

let control__scope ?compliance_resource_ids
    ?compliance_resource_types ?tags () : control__scope =
  { compliance_resource_ids; compliance_resource_types; tags }

let control ~name ~input_parameter ~scope () : control =
  { name; input_parameter; scope }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_backup_framework ?description ?id ?tags ?tags_all ?timeouts
    ~name ~control () : aws_backup_framework =
  { description; id; name; tags; tags_all; control; timeouts }

type t = {
  arn : string prop;
  creation_time : string prop;
  deployment_status : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?id ?tags ?tags_all ?timeouts
    ~name ~control __resource_id =
  let __resource_type = "aws_backup_framework" in
  let __resource =
    aws_backup_framework ?description ?id ?tags ?tags_all ?timeouts
      ~name ~control ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_backup_framework __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       creation_time =
         Prop.computed __resource_type __resource_id "creation_time";
       deployment_status =
         Prop.computed __resource_type __resource_id
           "deployment_status";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
