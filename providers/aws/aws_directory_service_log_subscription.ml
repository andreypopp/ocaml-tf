(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_directory_service_log_subscription = {
  directory_id : string prop;  (** directory_id *)
  id : string prop option; [@option]  (** id *)
  log_group_name : string prop;  (** log_group_name *)
}
[@@deriving yojson_of]
(** aws_directory_service_log_subscription *)

let aws_directory_service_log_subscription ?id ~directory_id
    ~log_group_name () : aws_directory_service_log_subscription =
  { directory_id; id; log_group_name }

type t = {
  directory_id : string prop;
  id : string prop;
  log_group_name : string prop;
}

let make ?id ~directory_id ~log_group_name __id =
  let __type = "aws_directory_service_log_subscription" in
  let __attrs =
    ({
       directory_id = Prop.computed __type __id "directory_id";
       id = Prop.computed __type __id "id";
       log_group_name = Prop.computed __type __id "log_group_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_directory_service_log_subscription
        (aws_directory_service_log_subscription ?id ~directory_id
           ~log_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~directory_id ~log_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~directory_id ~log_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
