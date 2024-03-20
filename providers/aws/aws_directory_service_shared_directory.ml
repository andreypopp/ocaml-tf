(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?method_ ?notes ?timeouts ~directory_id ~target __id =
  let __type = "aws_directory_service_shared_directory" in
  let __attrs =
    ({
       directory_id = Prop.computed __type __id "directory_id";
       id = Prop.computed __type __id "id";
       method_ = Prop.computed __type __id "method";
       notes = Prop.computed __type __id "notes";
       shared_directory_id =
         Prop.computed __type __id "shared_directory_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_directory_service_shared_directory
        (aws_directory_service_shared_directory ?id ?method_ ?notes
           ?timeouts ~directory_id ~target ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?method_ ?notes ?timeouts ~directory_id
    ~target __id =
  let (r : _ Tf_core.resource) =
    make ?id ?method_ ?notes ?timeouts ~directory_id ~target __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
