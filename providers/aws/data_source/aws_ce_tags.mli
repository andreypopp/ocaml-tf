(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter__and__cost_category

val filter__and__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  filter__and__cost_category

type filter__and__dimension

val filter__and__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  filter__and__dimension

type filter__and__tags

val filter__and__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  filter__and__tags

type filter__and

val filter__and :
  ?cost_category:filter__and__cost_category list ->
  ?dimension:filter__and__dimension list ->
  ?tags:filter__and__tags list ->
  unit ->
  filter__and

type filter__cost_category

val filter__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  filter__cost_category

type filter__dimension

val filter__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  filter__dimension

type filter__not__cost_category

val filter__not__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  filter__not__cost_category

type filter__not__dimension

val filter__not__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  filter__not__dimension

type filter__not__tags

val filter__not__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  filter__not__tags

type filter__not

val filter__not :
  ?cost_category:filter__not__cost_category list ->
  ?dimension:filter__not__dimension list ->
  ?tags:filter__not__tags list ->
  unit ->
  filter__not

type filter__or__cost_category

val filter__or__cost_category :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  filter__or__cost_category

type filter__or__dimension

val filter__or__dimension :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  filter__or__dimension

type filter__or__tags

val filter__or__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  filter__or__tags

type filter__or

val filter__or :
  ?cost_category:filter__or__cost_category list ->
  ?dimension:filter__or__dimension list ->
  ?tags:filter__or__tags list ->
  unit ->
  filter__or

type filter__tags

val filter__tags :
  ?key:string prop ->
  ?match_options:string prop list ->
  ?values:string prop list ->
  unit ->
  filter__tags

type filter

val filter :
  ?cost_category:filter__cost_category list ->
  ?dimension:filter__dimension list ->
  ?not:filter__not list ->
  ?tags:filter__tags list ->
  and_:filter__and list ->
  or_:filter__or list ->
  unit ->
  filter

type sort_by

val sort_by :
  ?key:string prop -> ?sort_order:string prop -> unit -> sort_by

type time_period

val time_period :
  end_:string prop -> start:string prop -> unit -> time_period

type aws_ce_tags

val aws_ce_tags :
  ?id:string prop ->
  ?search_string:string prop ->
  ?tag_key:string prop ->
  ?filter:filter list ->
  ?sort_by:sort_by list ->
  time_period:time_period list ->
  unit ->
  aws_ce_tags

val yojson_of_aws_ce_tags : aws_ce_tags -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  search_string : string prop;
  tag_key : string prop;
  tags : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?search_string:string prop ->
  ?tag_key:string prop ->
  ?filter:filter list ->
  ?sort_by:sort_by list ->
  time_period:time_period list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?search_string:string prop ->
  ?tag_key:string prop ->
  ?filter:filter list ->
  ?sort_by:sort_by list ->
  time_period:time_period list ->
  string ->
  t Tf_core.resource
