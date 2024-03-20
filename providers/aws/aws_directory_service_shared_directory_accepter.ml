(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_directory_service_shared_directory_accepter = {
  id : string prop option; [@option]  (** id *)
  shared_directory_id : string prop;  (** shared_directory_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_directory_service_shared_directory_accepter *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_directory_service_shared_directory_accepter ?id ?timeouts
    ~shared_directory_id () :
    aws_directory_service_shared_directory_accepter =
  { id; shared_directory_id; timeouts }

type t = {
  id : string prop;
  method_ : string prop;
  notes : string prop;
  owner_account_id : string prop;
  owner_directory_id : string prop;
  shared_directory_id : string prop;
}

let make ?id ?timeouts ~shared_directory_id __id =
  let __type = "aws_directory_service_shared_directory_accepter" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       method_ = Prop.computed __type __id "method";
       notes = Prop.computed __type __id "notes";
       owner_account_id =
         Prop.computed __type __id "owner_account_id";
       owner_directory_id =
         Prop.computed __type __id "owner_directory_id";
       shared_directory_id =
         Prop.computed __type __id "shared_directory_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_directory_service_shared_directory_accepter
        (aws_directory_service_shared_directory_accepter ?id
           ?timeouts ~shared_directory_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~shared_directory_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~shared_directory_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
