(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_backup_region_settings = {
  id : string prop option; [@option]  (** id *)
  resource_type_management_preference :
    (string * bool prop) list option;
      [@option]
      (** resource_type_management_preference *)
  resource_type_opt_in_preference : (string * bool prop) list;
      (** resource_type_opt_in_preference *)
}
[@@deriving yojson_of]
(** aws_backup_region_settings *)

let aws_backup_region_settings ?id
    ?resource_type_management_preference
    ~resource_type_opt_in_preference () : aws_backup_region_settings
    =
  {
    id;
    resource_type_management_preference;
    resource_type_opt_in_preference;
  }

type t = {
  id : string prop;
  resource_type_management_preference : (string * bool) list prop;
  resource_type_opt_in_preference : (string * bool) list prop;
}

let make ?id ?resource_type_management_preference
    ~resource_type_opt_in_preference __id =
  let __type = "aws_backup_region_settings" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       resource_type_management_preference =
         Prop.computed __type __id
           "resource_type_management_preference";
       resource_type_opt_in_preference =
         Prop.computed __type __id "resource_type_opt_in_preference";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_backup_region_settings
        (aws_backup_region_settings ?id
           ?resource_type_management_preference
           ~resource_type_opt_in_preference ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?resource_type_management_preference
    ~resource_type_opt_in_preference __id =
  let (r : _ Tf_core.resource) =
    make ?id ?resource_type_management_preference
      ~resource_type_opt_in_preference __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
