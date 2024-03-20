(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type target = {
  id : string prop;  (** id *)
  port : float prop option; [@option]  (** port *)
}
[@@deriving yojson_of]
(** target *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_vpclattice_target_group_attachment = {
  id : string prop option; [@option]  (** id *)
  target_group_identifier : string prop;
      (** target_group_identifier *)
  target : target list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_target_group_attachment *)

let target ?port ~id () : target = { id; port }
let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_vpclattice_target_group_attachment ?id ?timeouts
    ~target_group_identifier ~target () :
    aws_vpclattice_target_group_attachment =
  { id; target_group_identifier; target; timeouts }

type t = { id : string prop; target_group_identifier : string prop }

let make ?id ?timeouts ~target_group_identifier ~target __id =
  let __type = "aws_vpclattice_target_group_attachment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       target_group_identifier =
         Prop.computed __type __id "target_group_identifier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpclattice_target_group_attachment
        (aws_vpclattice_target_group_attachment ?id ?timeouts
           ~target_group_identifier ~target ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~target_group_identifier
    ~target __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~target_group_identifier ~target __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
