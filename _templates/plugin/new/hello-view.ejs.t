---
to: <%= name %>/src/<%= name %>-view.tsx
---
<%
 className = name.split('');
 className[0] = className[0].toUpperCase();
 className = className.join('');
%>

import { View } from '@bp/core-api';
import * as React from 'react';
import <%= className %> from './<%= name %>';

const <%= name %>View: View = {
  id: 'tutorial3/<%= name %>',
  route: 'tutorial3/<%= name %>',
  render: () => <<%= name %> />
};

export default <%= name %>View;



