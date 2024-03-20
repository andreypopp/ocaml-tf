(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_auditmanager_framework_share = {
  comment : string prop option; [@option]  (** comment *)
  destination_account : string prop;  (** destination_account *)
  destination_region : string prop;  (** destination_region *)
  framework_id : string prop;  (** framework_id *)
}
[@@deriving yojson_of]
(** aws_auditmanager_framework_share *)

let aws_auditmanager_framework_share ?comment ~destination_account
    ~destination_region ~framework_id () :
    aws_auditmanager_framework_share =
  { comment; destination_account; destination_region; framework_id }

type t = {
  comment : string prop;
  destination_account : string prop;
  destination_region : string prop;
  framework_id : string prop;
  id : string prop;
  status : string prop;
}

let make ?comment ~destination_account ~destination_region
    ~framework_id __id =
  let __type = "aws_auditmanager_framework_share" in
  let __attrs =
    ({
       comment = Prop.computed __type __id "comment";
       destination_account =
         Prop.computed __type __id "destination_account";
       destination_region =
         Prop.computed __type __id "destination_region";
       framework_id = Prop.computed __type __id "framework_id";
       id = Prop.computed __type __id "id";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_auditmanager_framework_share
        (aws_auditmanager_framework_share ?comment
           ~destination_account ~destination_region ~framework_id ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ~destination_account
    ~destination_region ~framework_id __id =
  let (r : _ Tf_core.resource) =
    make ?comment ~destination_account ~destination_region
      ~framework_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
